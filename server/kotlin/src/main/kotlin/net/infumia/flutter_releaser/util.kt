package net.infumia.flutter_releaser

import java.util.Base64
import kotlinx.coroutines.delay

fun env(key: String): Lazy<String> = lazy {
    System.getenv(key) ?: error("Environment variable '$key' is not set.")
}

fun envOrNull(key: String): Lazy<String?> = lazy { System.getenv(key) }

suspend fun <T> retry(retries: Int = 3, delayMillis: Long = 500L, block: suspend () -> T): T {
    repeat(retries - 1) {
        try {
            return block()
        } catch (_: Exception) {
            delay(delayMillis * (it + 1))
        }
    }
    return block()
}

fun isValidSha256Base64(str: String): Boolean {
    return try {
        Base64.getDecoder().decode(str).size == 32
    } catch (_: Throwable) {
        false
    }
}
