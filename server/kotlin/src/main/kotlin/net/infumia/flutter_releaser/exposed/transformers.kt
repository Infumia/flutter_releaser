package net.infumia.flutter_releaser.exposed

import io.ktor.http.Url
import net.infumia.flutter_releaser.EntityId
import org.jetbrains.exposed.v1.core.Column
import org.jetbrains.exposed.v1.core.ColumnTransformer
import org.jetbrains.exposed.v1.core.Table
import org.jetbrains.exposed.v1.dao.IntEntity

interface EntityTransformer<E : IntEntity, U : EntityId> {
    fun E.toModel(): U

    fun U.inject(entity: E)
}

context(table: Table)
fun Column<String>.asUrl(): Column<Url> = with(table) { transform(StringToUrlTransformer) }

private object StringToUrlTransformer : ColumnTransformer<String, Url> {
    override fun unwrap(value: Url): String = value.toString()

    override fun wrap(value: String): Url = Url(value)
}
