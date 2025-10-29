package net.infumia.flutter_releaser.service

import aws.sdk.kotlin.services.s3.S3Client
import kotlin.getValue
import kotlin.time.Duration.Companion.days
import net.infumia.flutter_releaser.FileNotFoundException
import net.infumia.flutter_releaser.FileNotUploadedException
import net.infumia.flutter_releaser.Headers
import net.infumia.flutter_releaser.S3File
import net.infumia.flutter_releaser.presignGetObject
import net.infumia.flutter_releaser.repository.impl.FileRepository
import net.infumia.flutter_releaser.repository.impl.S3FileRepository
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

object S3FileDownloadService : KoinComponent {
    private val s3Client by inject<S3Client>()
    private val fileRepository by inject<FileRepository>()
    private val s3FileRepository by inject<S3FileRepository>()

    suspend fun createPresignedUrl(id: Int): Triple<S3File, String, Headers> {
        val file = fileRepository.findById(id) ?: throw FileNotFoundException("File not found")
        val s3File =
            s3FileRepository.findByFileId(file.id())
                ?: throw FileNotFoundException("S3File not found")

        if (file.uploadDate == null) {
            throw FileNotUploadedException("File not uploaded")
        }

        val signedRequest =
            s3Client.presignGetObject(
                bucketId = s3File.bucketId,
                pathKey = s3File.pathKey,
                expire = 1.days,
            )

        return Triple(
            s3File,
            signedRequest.url.toString(),
            signedRequest.headers.entries().associate { it.key to it.value.joinToString(", ") },
        )
    }
}
