package net.infumia.flutter_releaser.repository.impl

import net.infumia.flutter_releaser.S3File
import net.infumia.flutter_releaser.exposed.S3FileEntity
import net.infumia.flutter_releaser.exposed.S3FileEntity.Companion.toModel
import net.infumia.flutter_releaser.exposed.S3FilesTable
import net.infumia.flutter_releaser.repository.IntIdRepository
import net.infumia.flutter_releaser.repository.IntIdRepositorySql
import org.jetbrains.exposed.v1.core.eq
import org.jetbrains.exposed.v1.jdbc.transactions.transaction

object S3FileRepository : IntIdRepository<S3File> by IntIdRepositorySql(S3FileEntity.Companion) {

    fun findByFileId(id: Int): S3File? = transaction {
        S3FileEntity.find { S3FilesTable.file eq id }.firstOrNull()?.toModel()
    }
}
