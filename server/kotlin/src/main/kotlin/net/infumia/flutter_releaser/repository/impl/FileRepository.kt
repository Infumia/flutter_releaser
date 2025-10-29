package net.infumia.flutter_releaser.repository.impl

import net.infumia.flutter_releaser.File
import net.infumia.flutter_releaser.exposed.FileEntity
import net.infumia.flutter_releaser.repository.IntIdRepository
import net.infumia.flutter_releaser.repository.IntIdRepositorySql

object FileRepository : IntIdRepository<File> by IntIdRepositorySql(FileEntity.Companion)
