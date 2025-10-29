package net.infumia.flutter_releaser.migration

import java.io.File
import net.infumia.flutter_releaser.exposed.commonTables
import net.infumia.flutter_releaser.hikariDataSource
import org.jetbrains.exposed.v1.jdbc.Database
import org.jetbrains.exposed.v1.jdbc.transactions.transaction
import org.jetbrains.exposed.v1.migration.jdbc.MigrationUtils

fun main(args: Array<String>) {
    val migrationName =
        args.getOrNull(0)
            ?: run {
                println("Please provide a migration name.")
                return
            }

    val dataSource = hikariDataSource()
    Database.connect(dataSource)

    transaction {
        val migrationsDir = File("src/main/resources/db/migrations")
        if (!migrationsDir.exists()) {
            migrationsDir.mkdirs()
        }
        val migrationNumber = (migrationsDir.listFiles()?.size ?: 0) + 1
        val scriptName = "V${migrationNumber}__$migrationName"
        MigrationUtils.generateMigrationScript(
            scriptDirectory = migrationsDir.path,
            scriptName = scriptName,
            tables = commonTables,
        )
        println("Migration script '$scriptName.sql' created successfully.")
    }
}
