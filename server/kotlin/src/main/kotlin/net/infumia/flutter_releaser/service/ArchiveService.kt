package net.infumia.flutter_releaser.service

import net.infumia.flutter_releaser.ApplicationArchive
import net.infumia.flutter_releaser.env
import net.infumia.flutter_releaser.repository.impl.VersionRepository
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

object ArchiveService : KoinComponent {
    private val versionRepository by inject<VersionRepository>()
    private val name by env("APPLICATION_ARCHIVE_NAME")
    private val description by env("APPLICATION_ARCHIVE_DESCRIPTION")

    fun retrieve(): ApplicationArchive =
        ApplicationArchive(
            name = name,
            description = description,
            versions = versionRepository.allUploaded(),
        )
}
