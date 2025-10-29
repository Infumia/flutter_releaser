package net.infumia.flutter_releaser

import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource
import io.ktor.server.application.Application
import kotlin.apply
import org.flywaydb.core.Flyway
import org.jetbrains.exposed.v1.jdbc.Database
import org.jetbrains.exposed.v1.jdbc.transactions.transaction
import org.koin.ktor.ext.inject

const val MIGRATION_DIRECTORY: String = "db/migrations"

internal fun Application.configureDatabase() {
    val flyway by inject<Flyway>()
    val database by inject<Database>()
    transaction(database) {
        flyway.repair()
        flyway.migrate()
    }
}

private val jdbcUrl by env("DATABASE_JDBC_URL")
private val username by env("DATABASE_USERNAME")
private val password by env("DATABASE_PASSWORD")
private val driverClassName by env("DATABASE_DRIVER_CLASS_NAME")

fun hikariDataSource(): HikariDataSource =
    HikariDataSource(
        HikariConfig().apply {
            jdbcUrl = jdbcUrl
            username = username
            password = password
            driverClassName = driverClassName
        }
    )
