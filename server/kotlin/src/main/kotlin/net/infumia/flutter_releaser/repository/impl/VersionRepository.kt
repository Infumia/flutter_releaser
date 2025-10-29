package net.infumia.flutter_releaser.repository.impl

import net.infumia.flutter_releaser.Version
import net.infumia.flutter_releaser.exposed.VersionEntity
import net.infumia.flutter_releaser.repository.IntIdRepository
import net.infumia.flutter_releaser.repository.IntIdRepositorySql

object VersionRepository : IntIdRepository<Version> by IntIdRepositorySql(VersionEntity.Companion)
