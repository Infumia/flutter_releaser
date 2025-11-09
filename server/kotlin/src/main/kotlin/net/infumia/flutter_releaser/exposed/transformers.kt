package net.infumia.flutter_releaser.exposed

import net.infumia.flutter_releaser.EntityId
import org.jetbrains.exposed.v1.dao.IntEntity

interface EntityTransformer<E : IntEntity, U : EntityId> {
    fun E.toModel(): U

    fun U.inject(entity: E)
}
