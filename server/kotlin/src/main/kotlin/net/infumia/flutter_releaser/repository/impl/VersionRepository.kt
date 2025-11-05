package net.infumia.flutter_releaser.repository.impl

import net.infumia.flutter_releaser.Platform
import net.infumia.flutter_releaser.Version
import net.infumia.flutter_releaser.exposed.VersionEntity
import net.infumia.flutter_releaser.exposed.VersionEntity.Companion.toModel
import net.infumia.flutter_releaser.exposed.VersionsTable
import net.infumia.flutter_releaser.repository.IntIdRepository
import net.infumia.flutter_releaser.repository.IntIdRepositorySql
import org.jetbrains.exposed.v1.core.and
import org.jetbrains.exposed.v1.core.eq
import org.jetbrains.exposed.v1.core.isNotNull
import org.jetbrains.exposed.v1.jdbc.transactions.transaction

object VersionRepository : IntIdRepository<Version> by IntIdRepositorySql(VersionEntity.Companion) {

    fun allUploaded(): List<Version> = transaction {
        VersionEntity.find { VersionsTable.file.isNotNull() }.map { it.toModel() }
    }

    fun findByVersionAndPlatform(version: String, platform: Platform): Version? = transaction {
        VersionEntity.find {
                (VersionsTable.version eq version) and (VersionsTable.platform eq platform)
            }
            .firstOrNull()
            ?.toModel()
    }
}
