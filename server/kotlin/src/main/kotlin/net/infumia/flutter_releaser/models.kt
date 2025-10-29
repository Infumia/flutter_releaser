package net.infumia.flutter_releaser

import kotlinx.datetime.LocalDateTime
import kotlinx.serialization.Serializable
import org.jetbrains.annotations.ApiStatus

@Serializable
data class ApplicationArchive(
    val name: String,
    val description: String,
    val versions: List<Version>,
)

@Serializable
data class Version(
    override val id: Int? = null,
    val file: File,
    val version: String,
    val platform: Platform,
    val sizeInBytes: Long,
    val mandatory: Boolean,
    val timestamp: LocalDateTime,
    val changes: List<Change>,
) : EntityId

@Serializable data class Change(val type: ChangeType, val message: String)

@Suppress("EnumEntryName")
enum class Platform {
    macos,
    linux,
    windows,
}

@Suppress("EnumEntryName")
enum class ChangeType {
    feat,
    fix,
    chore,
    doc,
}

typealias Headers = Map<String, String>

@Serializable
data class File(
    override val id: Int? = null,
    val name: String,
    val size: Long,
    val sha256: String,
    val requestDate: LocalDateTime,
    val uploadDate: LocalDateTime? = null,
) : EntityId

@Serializable
data class S3File(
    override val id: Int? = null,
    val file: File,
    val bucketId: String,
    val pathKey: String,
) : EntityId

interface EntityId {
    @get:ApiStatus.Internal val id: Int?

    fun id(): Int = id ?: throw IllegalArgumentException("id not initialized")

    fun hasId(): Boolean = id != null
}
