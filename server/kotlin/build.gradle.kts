plugins {
    alias(libs.plugins.spotless)
    alias(libs.plugins.kotlin.jvm)
    alias(libs.plugins.kotlin.serialization)
    alias(libs.plugins.ktor)
}

repositories { mavenCentral() }

application { mainClass = "io.ktor.server.netty.EngineMain" }

ktor {
    development = true

    fatJar { archiveFileName = "flutter_releaser_api.jar" }
}

java { toolchain { languageVersion = JavaLanguageVersion.of(17) } }

kotlin {
    compilerOptions {
        javaParameters.set(true)
        freeCompilerArgs.add("-Xcontext-parameters")
        freeCompilerArgs.add("-opt-in=kotlin.uuid.ExperimentalUuidApi")
        freeCompilerArgs.add(
            "-opt-in=org.jetbrains.exposed.v1.core.ExperimentalDatabaseMigrationApi"
        )
        freeCompilerArgs.add("-opt-in=kotlinx.serialization.ExperimentalSerializationApi")
    }
}

dependencies {
    fun bom(bom: Provider<MinimalExternalModuleDependency>) {
        val provider = platform(bom)
        compileOnly(provider)
        implementation(provider)
        runtimeOnly(provider)
    }

    bom(libs.ktor.bom)
    bom(libs.koin.bom)
    bom(libs.exposed.bom)

    implementation("io.ktor:ktor-server-core-jvm")
    implementation("io.ktor:ktor-server-netty-jvm")
    implementation("io.ktor:ktor-server-auth-jvm")
    implementation("io.ktor:ktor-server-auth-jwt-jvm")
    implementation("io.ktor:ktor-server-content-negotiation-jvm")
    implementation("io.ktor:ktor-server-status-pages")
    implementation("io.ktor:ktor-serialization-kotlinx-json-jvm")
    implementation("io.ktor:ktor-server-config-yaml")

    implementation("org.jetbrains.exposed:exposed-core")
    implementation("org.jetbrains.exposed:exposed-jdbc")
    implementation("org.jetbrains.exposed:exposed-dao")
    implementation("org.jetbrains.exposed:exposed-json")
    implementation("org.jetbrains.exposed:exposed-migration-core")
    implementation("org.jetbrains.exposed:exposed-migration-jdbc")
    implementation("org.jetbrains.exposed:exposed-kotlin-datetime")

    implementation("io.insert-koin:koin-ktor")
    implementation("io.insert-koin:koin-logger-slf4j")

    implementation(libs.hikari)
    implementation(libs.s3)
    implementation(libs.openapi)
    implementation(libs.swagger)
    implementation(libs.flyway)
    implementation(libs.flyway.postgresql)
    runtimeOnly(libs.logback)
    runtimeOnly(libs.postgresql)
}

tasks {
    register("format") {
        group = "formatting"
        description = "Runs Spotless code formatter"
        dependsOn(spotlessApply)
    }

    shadowJar {
        mergeServiceFiles()

        duplicatesStrategy = DuplicatesStrategy.INCLUDE
    }

    val envFile = ".local.env"

    fun JavaExec.loadEnvironmentVariables(path: String) {
        val envFile = rootProject.layout.files(path).singleFile
        val lines = envFile.readLines().map { it.trim() }.filter { it.isNotEmpty() }
        for (line in lines) {
            val split = line.split("=")
            val key = split[0]
            val value = split[1]
            environment[key] = value
        }
    }

    run.configure { doFirst { loadEnvironmentVariables(envFile) } }

    register<JavaExec>("generateMigration") {
        group = "migration"
        description = "Generates a new database migration script."
        classpath = sourceSets.main.get().runtimeClasspath
        mainClass.set("net.infumia.flutter_releaser.migration.MigrationGeneratorKt")

        val migrationName = findProperty("migrationName") ?: "migration"
        args(migrationName)
        doFirst { loadEnvironmentVariables(envFile) }
    }
}

spotless {
    val prettierConfig =
        mapOf(
            "prettier" to "3.6.2",
            "prettier-plugin-toml" to "2.0.6",
            "@prettier/plugin-xml" to "3.4.2",
            "prettier-plugin-properties" to "0.3.0",
        )

    isEnforceCheck = false
    lineEndings = com.diffplug.spotless.LineEnding.UNIX

    flexmark {
        target("**/*.md")
        endWithNewline()
        trimTrailingWhitespace()
        flexmark()
    }

    yaml {
        target("src/main/resources/application.yaml")
        endWithNewline()
        trimTrailingWhitespace()
        jackson().yamlFeature("LITERAL_BLOCK_STYLE", true).yamlFeature("SPLIT_LINES", false)
    }

    kotlin {
        target("*.gradle.kts", "/src/**/kotlin/**/*.kt")
        endWithNewline()
        trimTrailingWhitespace()
        ktfmt(libs.versions.ktfmt.get()).kotlinlangStyle().configure {
            it.setMaxWidth(100)
            it.setBlockIndent(4)
            it.setContinuationIndent(4)
            it.setRemoveUnusedImports(true)
        }
    }

    sql {
        target("**/*.sql")
        dbeaver()
    }

    format("toml") {
        target("gradle/libs.versions.toml")
        endWithNewline()
        trimTrailingWhitespace()
        prettier(prettierConfig).config(mapOf("plugins" to listOf("prettier-plugin-toml")))
    }

    format("xml") {
        target("src/main/resources/logback.xml")
        endWithNewline()
        trimTrailingWhitespace()
        prettier(prettierConfig).config(mapOf("plugins" to listOf("@prettier/plugin-xml")))
    }

    format("properties") {
        target("gradle.properties")
        endWithNewline()
        trimTrailingWhitespace()
        prettier(prettierConfig).config(mapOf("plugins" to listOf("prettier-plugin-properties")))
    }
}
