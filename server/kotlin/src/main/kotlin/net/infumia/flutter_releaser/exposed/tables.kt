package net.infumia.flutter_releaser.exposed

import io.ktor.serialization.kotlinx.json.*
import net.infumia.flutter_releaser.Change
import net.infumia.flutter_releaser.Platform
import org.jetbrains.exposed.v1.core.ReferenceOption
import org.jetbrains.exposed.v1.core.dao.id.IntIdTable
import org.jetbrains.exposed.v1.datetime.datetime
import org.jetbrains.exposed.v1.json.json

val commonTables = arrayOf(FilesTable, VersionsTable, S3FilesTable)

object VersionsTable : IntIdTable("versions") {
    val file = reference("file", FilesTable, onDelete = ReferenceOption.CASCADE).uniqueIndex()
    val version = text("version")
    val platform = enumerationByName<Platform>("platform", 16)
    val sizeInBytes = long("size_in_bytes")
    val mandatory = bool("mandatory")
    val timestamp = datetime("timestamp")
    val changes = json<List<Change>>("changes", DefaultJson)

    init {
        uniqueIndex(version, platform)
    }
}

object FilesTable : IntIdTable("files") {
    val name = text("name")
    val size = long("size")
    val sha256 = text("sha256")
    val requestDate = datetime("request_date")
    val uploadDate = datetime("upload_date").nullable()
}

object S3FilesTable : IntIdTable("s3_files") {
    val file = reference("file", S3FilesTable, onDelete = ReferenceOption.CASCADE)
    val bucketId = text("bucket_id")
    val pathKey = text("path_key")

    init {
        uniqueIndex(bucketId, pathKey)
    }
}
