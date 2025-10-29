package net.infumia.flutter_releaser

import io.ktor.serialization.kotlinx.json.jsonIo
import io.ktor.server.application.Application
import io.ktor.server.application.install
import io.ktor.server.plugins.contentnegotiation.ContentNegotiation

internal fun Application.configureSerialization() {
    install(ContentNegotiation) { jsonIo() }
}
