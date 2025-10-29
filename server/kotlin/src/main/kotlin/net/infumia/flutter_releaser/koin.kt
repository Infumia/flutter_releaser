package net.infumia.flutter_releaser

import io.ktor.server.application.*
import javax.sql.DataSource
import net.infumia.flutter_releaser.repository.impl.FileRepository
import net.infumia.flutter_releaser.repository.impl.S3FileRepository
import net.infumia.flutter_releaser.repository.impl.VersionRepository
import net.infumia.flutter_releaser.service.ArchiveService
import net.infumia.flutter_releaser.service.FileUploadConfirmationService
import net.infumia.flutter_releaser.service.S3FileDownloadService
import net.infumia.flutter_releaser.service.S3FileUploadService
import org.flywaydb.core.Flyway
import org.jetbrains.exposed.v1.jdbc.Database
import org.koin.dsl.module
import org.koin.ktor.plugin.Koin
import org.koin.logger.slf4jLogger

internal fun Application.configureKoin() {
    install(Koin) {
        slf4jLogger()
        modules(
            s3Module,
            datasourceModule,
            databaseModule,
            flywayModule,
            repositoryModule,
            serviceModule,
        )
    }
}

private val s3Module = module { single { initS3Client() } }

private val datasourceModule = module { single<DataSource> { hikariDataSource() } }

private val databaseModule = module {
    single {
        val datasource by inject<DataSource>()
        Database.connect(datasource)
    }
}

private val flywayModule = module {
    single {
        val datasource by inject<DataSource>()
        Flyway.configure()
            .dataSource(datasource)
            .locations(MIGRATION_DIRECTORY)
            .baselineOnMigrate(true)
            .baselineVersion("0")
            .load()
    }
}

private val repositoryModule = module {
    single { VersionRepository }
    single { FileRepository }
    single { S3FileRepository }
}

private val serviceModule = module {
    single { ArchiveService }
    single { S3FileUploadService }
    single { S3FileDownloadService }
    single { FileUploadConfirmationService }
}
