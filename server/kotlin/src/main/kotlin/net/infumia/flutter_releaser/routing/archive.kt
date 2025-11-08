package net.infumia.flutter_releaser.routing

import io.github.smiley4.ktoropenapi.get
import io.github.smiley4.ktoropenapi.put
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.util.*
import kotlinx.serialization.Serializable
import net.infumia.flutter_releaser.ApplicationArchive
import net.infumia.flutter_releaser.Change
import net.infumia.flutter_releaser.Headers
import net.infumia.flutter_releaser.Platform
import net.infumia.flutter_releaser.StatusResponse
import net.infumia.flutter_releaser.UnknownUploadTechnologyException
import net.infumia.flutter_releaser.exposed.VersionsTable.platform
import net.infumia.flutter_releaser.service.ArchiveService
import net.infumia.flutter_releaser.service.FileUploadConfirmationService
import net.infumia.flutter_releaser.service.S3FileDownloadService
import net.infumia.flutter_releaser.service.S3FileUploadService
import org.koin.ktor.ext.inject

internal fun Application.routeArchive() {
    val archiveService by inject<ArchiveService>()
    val fileUploadConfirmationService by inject<FileUploadConfirmationService>()
    val s3FileUploadService by inject<S3FileUploadService>()
    val s3FileDownloadService by inject<S3FileDownloadService>()
    routing {
        authenticate {
            route("archive") {
                get({
                    description = "Retrieve all archives"
                    response {
                        HttpStatusCode.OK to
                            {
                                description = "List of archives retrieved successfully"
                                body<ApplicationArchive>()
                            }
                        HttpStatusCode.Unauthorized to { description = "Authentication required" }
                    }
                }) {
                    call.respond(archiveService.retrieve())
                }

                put({
                    description = "Upload a new version to the archive"
                    request {
                        body<UploadVersionRequest> {
                            description = "Information about the file to upload"
                        }
                        queryParameter<Boolean>("s3") {
                            description = "Whether to use S3 for upload (default: false)"
                            required = false
                        }
                    }
                    response {
                        HttpStatusCode.OK to
                            {
                                description = "Upload URL generated successfully"
                                body<UploadFileResponse>()
                            }
                        HttpStatusCode.BadRequest to
                            {
                                description =
                                    "Invalid upload technology specified | File Sha256 is empty | File Sha256 must be a valid base64 encoded SHA256 hash | File size must be greater than zero"
                                body<StatusResponse>()
                            }
                        HttpStatusCode.Unauthorized to { description = "Authentication required" }
                    }
                }) {
                    val request = call.receive<UploadVersionRequest>()
                    val s3 = call.queryParameters["s3"]?.toBoolean() ?: false

                    call.respond(
                        if (s3) {
                            val (preSignedUrl, headers, fileId) =
                                s3FileUploadService.createPresignedUrl(
                                    fileName = request.name,
                                    fileSizeInBytes = request.sizeInBytes,
                                    fileSha256 = request.sha256,
                                    version = request.version,
                                    platform = request.platform,
                                    mandatory = request.mandatory,
                                    changes = request.changes,
                                )
                            UploadFileResponse(id = fileId, url = preSignedUrl, headers = headers)
                        } else {
                            throw UnknownUploadTechnologyException(
                                "Unknown upload technology '${call.queryParameters}'"
                            )
                        }
                    )
                }

                route("{id}") {
                    get({
                        description = "Download a specific archive version by ID"
                        request {
                            pathParameter<Int>("id") {
                                description = "ID of the archive version to download"
                            }
                            queryParameter<Boolean>("s3") {
                                description = "Whether to use S3 for download (default: false)"
                                required = false
                            }
                        }
                        response {
                            HttpStatusCode.OK to
                                {
                                    description = "Download URL generated successfully"
                                    body<DownloadS3FileResponse>()
                                }
                            HttpStatusCode.Unauthorized to
                                {
                                    description = "Authentication required"
                                }
                            HttpStatusCode.BadRequest to
                                {
                                    description =
                                        "Invalid download technology specified | File not uploaded"
                                    body<StatusResponse>()
                                }
                            HttpStatusCode.NotFound to
                                {
                                    description = "Archive version not found"
                                    body<StatusResponse>()
                                }
                        }
                    }) {
                        val id: Int by call.pathParameters
                        val s3 = call.queryParameters["s3"]?.toBoolean() ?: false

                        call.respond(
                            if (s3) {
                                val (downloadUrl, headers) =
                                    s3FileDownloadService.createPresignedUrl(id)

                                DownloadS3FileResponse(url = downloadUrl, headers = headers)
                            } else {
                                throw UnknownUploadTechnologyException(
                                    "Unknown upload technology '${call.queryParameters}'"
                                )
                            }
                        )
                    }

                    put({
                        description = "Confirm the upload of a specific archive version by ID"
                        request {
                            pathParameter<Int>("id") {
                                description = "ID of the archive version to confirm"
                            }
                        }
                        response {
                            HttpStatusCode.OK to { description = "Upload confirmed successfully" }
                            HttpStatusCode.Unauthorized to
                                {
                                    description = "Authentication required"
                                }
                            HttpStatusCode.NotFound to
                                {
                                    description = "Archive version not found"
                                    body<StatusResponse>()
                                }
                            HttpStatusCode.Conflict to
                                {
                                    description = "File already uploaded"
                                    body<StatusResponse>()
                                }
                        }
                    }) {
                        val id: Int by call.pathParameters

                        fileUploadConfirmationService.confirm(id)

                        call.respond(HttpStatusCode.OK)
                    }
                }
            }
        }
    }
}

@Serializable private data class DownloadS3FileResponse(val url: String, val headers: Headers)

@Serializable
private data class UploadVersionRequest(
    val name: String,
    val sizeInBytes: Long,
    val sha256: String,
    val version: String,
    val platform: Platform,
    val mandatory: Boolean,
    val changes: List<Change>,
)

@Serializable
private data class UploadFileResponse(val id: Int, val url: String, val headers: Headers)
