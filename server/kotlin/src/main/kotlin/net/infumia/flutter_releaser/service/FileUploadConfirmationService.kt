package net.infumia.flutter_releaser.service

import net.infumia.flutter_releaser.FileAlreadyUploadedException
import net.infumia.flutter_releaser.FileNotFoundException
import net.infumia.flutter_releaser.localDateTimeNow
import net.infumia.flutter_releaser.repository.impl.FileRepository
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

object FileUploadConfirmationService : KoinComponent {
    private val fileRepository by inject<FileRepository>()

    fun confirm(id: Int) {
        val file = fileRepository.findById(id) ?: throw FileNotFoundException("File not found!")

        if (file.uploadDate != null) {
            throw FileAlreadyUploadedException("File already uploaded!")
        }

        fileRepository.updateOrCreate(file.copy(uploadDate = localDateTimeNow))
    }
}
