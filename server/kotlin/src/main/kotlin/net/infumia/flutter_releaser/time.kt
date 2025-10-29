package net.infumia.flutter_releaser

import kotlinx.datetime.LocalDateTime
import kotlinx.datetime.toKotlinLocalDateTime

val localDateTimeNow: LocalDateTime
    get() = java.time.LocalDateTime.now().toKotlinLocalDateTime()
