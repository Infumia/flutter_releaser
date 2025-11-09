package net.infumia.flutter_releaser.security

import io.ktor.server.application.Application
import io.ktor.server.auth.UserIdPrincipal
import io.ktor.server.auth.authentication
import io.ktor.server.auth.basic
import net.infumia.flutter_releaser.env

private val accessKey by env("FLUTTER_RELEASER_ACCESS_KEY")
private val secretKey by env("FLUTTER_RELEASER_SECRET_KEY")

internal fun Application.configureAuthentication() {
    authentication {
        basic {
            realm = "Access to flutter_releaser routes"
            validate {
                if (it.name == accessKey && it.password == secretKey) {
                    UserIdPrincipal(it.name)
                } else {
                    null
                }
            }
        }
    }
}
