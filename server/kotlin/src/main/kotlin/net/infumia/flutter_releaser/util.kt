package net.infumia.flutter_releaser

import java.util.Base64

fun env(key: String): Lazy<String> = lazy {
    System.getenv(key) ?: error("Environment variable '$key' is not set.")
}

fun envOrNull(key: String): Lazy<String?> = lazy { System.getenv(key) }

fun isValidSha256Base64(str: String): Boolean {
    return try {
        Base64.getDecoder().decode(str).size == 32
    } catch (_: Throwable) {
        false
    }
}
