package net.infumia.flutter_releaser.service

import aws.sdk.kotlin.services.s3.S3Client
import kotlin.getValue
import kotlin.time.Duration.Companion.days
import net.infumia.flutter_releaser.FileNotFoundException
import net.infumia.flutter_releaser.FileNotUploadedException
import net.infumia.flutter_releaser.Headers
import net.infumia.flutter_releaser.presignGetObject
import net.infumia.flutter_releaser.repository.impl.S3FileRepository
import net.infumia.flutter_releaser.repository.impl.VersionRepository
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

object S3FileDownloadService : KoinComponent {
    private val s3Client by inject<S3Client>()
    private val versionRepository by inject<VersionRepository>()
    private val s3FileRepository by inject<S3FileRepository>()

    suspend fun createPresignedUrl(versionId: Int): Pair<String, Headers> {
        val version =
            versionRepository.findById(versionId)
                ?: throw FileNotFoundException("Version not found")
        val s3File =
            s3FileRepository.findByFileId(version.file.id())
                ?: throw FileNotFoundException("File not found")

        if (version.file.uploadDate == null) {
            throw FileNotUploadedException("File not uploaded")
        }

        val signedRequest =
            s3Client.presignGetObject(
                bucketId = s3File.bucketId,
                pathKey = s3File.pathKey,
                expire = 1.days,
            )

        return Pair(
            signedRequest.url.toString(),
            signedRequest.headers.entries().associate { it.key to it.value.joinToString(", ") },
        )
    }
}
