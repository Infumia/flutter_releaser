package net.infumia.flutter_releaser.exposed

import kotlin.reflect.full.companionObjectInstance
import net.infumia.flutter_releaser.EntityId
import net.infumia.flutter_releaser.File
import net.infumia.flutter_releaser.S3File
import net.infumia.flutter_releaser.Version
import net.infumia.flutter_releaser.exposed.FileEntity.Companion.toModel
import net.infumia.flutter_releaser.exposed.S3FileEntity.Companion.toModel
import org.jetbrains.exposed.v1.core.dao.id.EntityID
import org.jetbrains.exposed.v1.core.dao.id.IdTable
import org.jetbrains.exposed.v1.dao.IntEntity
import org.jetbrains.exposed.v1.dao.IntEntityClass

class VersionEntity(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClassTransformed<VersionEntity, Version>(VersionsTable) {
        override fun VersionEntity.toModel(): Version =
            Version(
                id = id.value,
                file = file.toModel(),
                version = version,
                platform = platform,
                sizeInBytes = sizeInBytes,
                mandatory = mandatory,
                timestamp = timestamp,
                changes = changes,
            )

        override fun Version.inject(entity: VersionEntity) {
            entity.file = file.toEntity()
            entity.version = version
            entity.platform = platform
            entity.sizeInBytes = sizeInBytes
            entity.mandatory = mandatory
            entity.timestamp = timestamp
            entity.changes = changes
        }
    }

    var file by S3FileEntity referencedOn VersionsTable.file
    var version by VersionsTable.version
    var platform by VersionsTable.platform
    var sizeInBytes by VersionsTable.sizeInBytes
    var mandatory by VersionsTable.mandatory
    var timestamp by VersionsTable.timestamp
    var changes by VersionsTable.changes
}

class FileEntity(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClassTransformed<FileEntity, File>(FilesTable) {
        override fun FileEntity.toModel(): File =
            File(
                id = id.value,
                name = name,
                size = size,
                sha256 = sha256,
                requestDate = requestDate,
                uploadDate = uploadDate,
            )

        override fun File.inject(entity: FileEntity) {
            entity.name = name
            entity.size = size
            entity.sha256 = sha256
            entity.requestDate = requestDate
            entity.uploadDate = uploadDate
        }
    }

    var name by FilesTable.name
    var size by FilesTable.size
    var sha256 by FilesTable.sha256
    var requestDate by FilesTable.requestDate
    var uploadDate by FilesTable.uploadDate
}

class S3FileEntity(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClassTransformed<S3FileEntity, S3File>(S3FilesTable) {
        override fun S3FileEntity.toModel(): S3File =
            S3File(id = id.value, file = file.toModel(), bucketId = bucketId, pathKey = pathKey)

        override fun S3File.inject(entity: S3FileEntity) {
            entity.file = file.toEntity()
            entity.bucketId = bucketId
            entity.pathKey = pathKey
        }
    }

    var file by FileEntity referencedOn S3FilesTable.file
    var bucketId by S3FilesTable.bucketId
    var pathKey by S3FilesTable.pathKey
}

@Suppress("UNCHECKED_CAST")
inline fun <reified E : IntEntity> EntityId.toEntity(): E {
    val finder =
        E::class.companionObjectInstance as? IntEntityClass<E>
            ?: error("Companion object of ${E::class.simpleName} is not an EntityFinder")
    return finder[id()]
}

abstract class IntEntityClassTransformed<E : IntEntity, U : EntityId>(
    table: IdTable<Int>,
    entityType: Class<E>? = null,
    entityCtor: ((EntityID<Int>) -> E)? = null,
) : IntEntityClass<E>(table, entityType, entityCtor), EntityTransformer<E, U>
