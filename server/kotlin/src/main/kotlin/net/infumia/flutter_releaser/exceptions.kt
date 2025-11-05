package net.infumia.flutter_releaser

import io.ktor.http.HttpStatusCode
import kotlin.text.lowercase
import kotlin.text.replace
import kotlinx.serialization.Serializable

@Serializable data class StatusResponse(val message: String, val errorType: String)

class UnknownUploadTechnologyException(message: String) :
    StatusException(message, HttpStatusCode.BadRequest)

class InvalidSha256Exception(message: String) : StatusException(message, HttpStatusCode.BadRequest)

class InvalidBase64Exception(message: String) : StatusException(message, HttpStatusCode.BadRequest)

class InvalidFileSizeException(message: String) :
    StatusException(message, HttpStatusCode.BadRequest)

class FileNotFoundException(message: String) : StatusException(message, HttpStatusCode.NotFound)

class FileNotUploadedException(message: String) :
    StatusException(message, HttpStatusCode.BadRequest)

class FileAlreadyUploadedException(message: String) :
    StatusException(message, HttpStatusCode.Conflict)

class VersionPlatformAlreadyExistsException(message: String) :
    StatusException(message, HttpStatusCode.Conflict)

open class StatusException(message: String, val code: HttpStatusCode) : Throwable(message) {
    val toStatusResponse = StatusResponse(message, normalize())
}

private fun Any.normalize(): String = this::class.simpleName!!.normalize()

private fun String.normalize(): String =
    replace("Exception", "").replace(EXCEPTION_NAME_NORMALIZE_REGEX, "$1_$2").lowercase()
