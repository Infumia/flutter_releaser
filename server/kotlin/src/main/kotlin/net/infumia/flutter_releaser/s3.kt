package net.infumia.flutter_releaser

import aws.sdk.kotlin.runtime.auth.credentials.StaticCredentialsProvider
import aws.sdk.kotlin.services.s3.S3Client
import aws.sdk.kotlin.services.s3.createBucket
import aws.sdk.kotlin.services.s3.deleteObject
import aws.sdk.kotlin.services.s3.model.*
import aws.sdk.kotlin.services.s3.presigners.presignGetObject
import aws.sdk.kotlin.services.s3.presigners.presignPutObject
import aws.smithy.kotlin.runtime.http.request.HttpRequest
import aws.smithy.kotlin.runtime.net.url.Url
import io.ktor.server.application.Application
import java.net.URLConnection
import kotlin.time.Duration
import org.koin.ktor.ext.inject

private val region by env("S3_REGION")
private val endpointUrl by env("S3_HOST")
private val accessKeyId by env("S3_ACCESS_KEY")
private val secretAccessKey by env("S3_SECRET_KEY")
private val bucketId by env("S3_APPLICATION_ARCHIVE_BUCKET_ID")

fun initS3Client(): S3Client = S3Client {
    region = net.infumia.flutter_releaser.region
    endpointUrl = Url.parse(net.infumia.flutter_releaser.endpointUrl)
    credentialsProvider = StaticCredentialsProvider {
        accessKeyId = net.infumia.flutter_releaser.accessKeyId
        secretAccessKey = net.infumia.flutter_releaser.secretAccessKey
    }
    forcePathStyle = true
}

suspend fun S3Client.presignPutObject(
    bucketId: String,
    pathKey: String,
    fileSizeInBytes: Long,
    fileName: String,
    fileSha256: String,
    expire: Duration,
): HttpRequest =
    presignPutObject(
        PutObjectRequest {
            bucket = bucketId
            key = pathKey
            contentLength = fileSizeInBytes
            contentType = URLConnection.guessContentTypeFromName(fileName)
            checksumSha256 = fileSha256
            checksumAlgorithm = ChecksumAlgorithm.Sha256
        },
        expire,
    )

suspend fun S3Client.presignGetObject(
    bucketId: String,
    pathKey: String,
    expire: Duration,
): HttpRequest =
    presignGetObject(
        GetObjectRequest {
            bucket = bucketId
            key = pathKey
        },
        expire,
    )

suspend fun S3Client.bucketExists(bucketId: String): Boolean {
    return try {
        headBucket(HeadBucketRequest { bucket = bucketId })
        true
    } catch (_: NotFound) {
        return false
    }
}

suspend fun S3Client.createBucket(bucketId: String): CreateBucketResponse = createBucket {
    bucket = bucketId
}

suspend fun S3Client.deleteFile(bucketId: String, pathKey: String) = deleteObject {
    bucket = bucketId
    key = pathKey
}

internal suspend fun Application.configureS3() {
    val s3Client by inject<S3Client>()
    if (!s3Client.bucketExists(bucketId)) {
        s3Client.createBucket(bucketId)
    }
}
