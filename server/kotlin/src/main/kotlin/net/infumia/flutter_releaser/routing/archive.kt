package net.infumia.flutter_releaser.routing

import io.github.smiley4.ktoropenapi.get
import io.github.smiley4.ktoropenapi.put
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.routing.get
import io.ktor.server.util.*
import kotlinx.serialization.Serializable
import net.infumia.flutter_releaser.File
import net.infumia.flutter_releaser.Headers
import net.infumia.flutter_releaser.UnknownUploadTechnologyException
import net.infumia.flutter_releaser.service.ArchiveService
import net.infumia.flutter_releaser.service.FileUploadConfirmationService
import net.infumia.flutter_releaser.service.S3FileDownloadService
import net.infumia.flutter_releaser.service.S3FileUploadService
import org.koin.ktor.ext.inject

internal fun Application.routeArchive() {
    val archiveService by inject<ArchiveService>()
    val fileUploadConfirmationService by inject<FileUploadConfirmationService>()
    val s3FileUploadService = inject<S3FileUploadService>()
    val s3FileDownloadService = inject<S3FileDownloadService>()
    routing {
        authenticate {
            route("archive") {
                get({
                    description = "..."
                    response {}
                }) {
                    call.respond(archiveService.retrieve())
                }

                put({
                    description = "..."
                    response {}
                }) {
                    val request = call.receive<UploadVersionRequest>()
                    val s3 = call.queryParameters["s3"]?.toBoolean() ?: false

                    call.respond(
                        if (s3) {
                            val (preSignedUrl, headers, fileId) =
                                s3FileUploadService.value.createPresignedUrl(
                                    fileName = request.name,
                                    fileSizeInBytes = request.sizeInBytes,
                                    fileSha256 = request.sha256,
                                )
                            UploadFileResponse(preSignedUrl, headers, fileId)
                        } else {
                            throw UnknownUploadTechnologyException(
                                "Unknown upload technology '${call.queryParameters}'"
                            )
                        }
                    )
                }

                route("{id}") {
                    get({
                        description = "..."
                        response {}
                    }) {
                        val id: Int by call.pathParameters
                        val s3 = call.queryParameters["s3"]?.toBoolean() ?: false

                        call.respond(
                            if (s3) {
                                val (file, downloadUrl, headers) =
                                    s3FileDownloadService.value.createPresignedUrl(id)

                                DownloadS3FileResponse(file.file, downloadUrl, headers)
                            } else {
                                throw UnknownUploadTechnologyException(
                                    "Unknown upload technology '${call.queryParameters}'"
                                )
                            }
                        )
                    }

                    put({
                        description = "..."
                        response {}
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

@Serializable
private data class DownloadS3FileResponse(
    val file: File,
    val preSignedUrl: String,
    val headers: Headers,
)

@Serializable
private data class UploadVersionRequest(
    val name: String,
    val sizeInBytes: Long,
    val sha256: String,
)

@Serializable
private data class UploadFileResponse(val url: String, val headers: Headers, val id: Int)
