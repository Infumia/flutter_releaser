package net.infumia.flutter_releaser.service

import aws.sdk.kotlin.services.s3.S3Client
import kotlin.getValue
import kotlin.time.Duration.Companion.days
import kotlin.uuid.Uuid
import net.infumia.flutter_releaser.Change
import net.infumia.flutter_releaser.File
import net.infumia.flutter_releaser.Headers
import net.infumia.flutter_releaser.InvalidBase64Exception
import net.infumia.flutter_releaser.InvalidFileSizeException
import net.infumia.flutter_releaser.InvalidSha256Exception
import net.infumia.flutter_releaser.Platform
import net.infumia.flutter_releaser.S3File
import net.infumia.flutter_releaser.Version
import net.infumia.flutter_releaser.env
import net.infumia.flutter_releaser.envOrNull
import net.infumia.flutter_releaser.isValidSha256Base64
import net.infumia.flutter_releaser.localDateTimeNow
import net.infumia.flutter_releaser.presignPutObject
import net.infumia.flutter_releaser.repository.impl.FileRepository
import net.infumia.flutter_releaser.repository.impl.S3FileRepository
import net.infumia.flutter_releaser.repository.impl.VersionRepository
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

private val bucketId by env("S3_APPLICATION_ARCHIVE_BUCKET_ID")
private val bucketPath by envOrNull("S3_APPLICATION_ARCHIVE_BUCKET_PATH")

object S3FileUploadService : KoinComponent {
    private val s3Client by inject<S3Client>()
    private val fileRepository by inject<FileRepository>()
    private val s3FileRepository by inject<S3FileRepository>()
    private val versionRepository by inject<VersionRepository>()

    suspend fun createPresignedUrl(
        fileName: String,
        fileSizeInBytes: Long,
        fileSha256: String,
        version: String,
        platform: Platform,
        mandatory: Boolean,
        changes: List<Change>,
    ): Triple<String, Headers, Int> {
        if (fileSha256.isEmpty()) {
            throw InvalidSha256Exception("File Sha256 is empty")
        }

        if (!isValidSha256Base64(fileSha256)) {
            throw InvalidBase64Exception("File Sha256 must be a valid base64 encoded SHA256 hash")
        }

        if (fileSizeInBytes <= 0) {
            throw InvalidFileSizeException("File size must be greater than zero")
        }

        val now = localDateTimeNow
        val file =
            fileRepository.create(
                File(
                    name = fileName,
                    size = fileSizeInBytes,
                    sha256 = fileSha256,
                    requestDate = now,
                )
            )

        val pathKeyPrefix = bucketPath?.trim()?.replace(" ", "")
        val uniquePath = Uuid.random().toString()
        val pathKey = if (pathKeyPrefix == null) uniquePath else "$pathKeyPrefix/$uniquePath"
        val s3File =
            s3FileRepository.create(S3File(file = file, bucketId = bucketId, pathKey = pathKey))

        val signedRequest =
            s3Client.presignPutObject(
                bucketId = s3File.bucketId,
                pathKey = s3File.pathKey,
                fileSizeInBytes = file.size,
                fileName = file.name,
                fileSha256 = file.sha256,
                expire = 1.days,
            )

        versionRepository.create(
            Version(
                file = file,
                version = version,
                platform = platform,
                sizeInBytes = fileSizeInBytes,
                mandatory = mandatory,
                timestamp = now,
                changes = changes,
            )
        )

        return Triple(
            signedRequest.url.toString(),
            signedRequest.headers.entries().associate { it.key to it.value.joinToString(", ") },
            file.id(),
        )
    }
}
