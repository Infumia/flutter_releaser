package net.infumia.flutter_releaser

import io.github.smiley4.ktoropenapi.OpenApi
import io.github.smiley4.ktoropenapi.openApi
import io.github.smiley4.ktorswaggerui.swaggerUI
import io.ktor.server.application.Application
import io.ktor.server.application.install
import io.ktor.server.routing.route
import io.ktor.server.routing.routing

internal fun Application.configureOpenapi() {
    install(OpenApi) {
        security {}

        info {
            title = "Flutter Releaser Api"
            version = "latest"
            description = "Flutter Releaser Api documentation."
        }

        server { description = "Flutter Releaser Api Server" }
    }

    routing {
        route("api.json") { openApi() }

        route("swagger") { swaggerUI("/api.json") }
    }
}
