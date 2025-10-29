package net.infumia.flutter_releaser

import io.ktor.server.application.Application
import io.ktor.server.application.install
import io.ktor.server.plugins.statuspages.StatusPages
import io.ktor.server.response.respond

internal fun Application.configureStatusPages() {
    install(StatusPages) {
        exception<StatusException> { call, cause ->
            call.respond(cause.code, cause.toStatusResponse)
        }
    }
}
