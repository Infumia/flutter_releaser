package net.infumia.flutter_releaser.repository

import kotlin.collections.map
import net.infumia.flutter_releaser.EntityId
import net.infumia.flutter_releaser.exposed.IntEntityClassTransformed
import org.jetbrains.exposed.v1.core.inList
import org.jetbrains.exposed.v1.dao.IntEntity
import org.jetbrains.exposed.v1.jdbc.deleteWhere
import org.jetbrains.exposed.v1.jdbc.transactions.transaction

class IntIdRepositorySql<E : IntEntity, U : EntityId>(entity: IntEntityClassTransformed<E, U>) :
    IntIdRepository<U> {
    private val direct = IntIdRepositorySqlDirect(entity)

    override fun create(u: U): U = transaction { direct.create(u) }

    override fun createWithId(id: Int, u: U): U = transaction { direct.createWithId(id, u) }

    override fun updateOrCreate(u: U): U = transaction { direct.updateOrCreate(u) }

    override fun findById(id: Int): U? = transaction { direct.findById(id) }

    override fun findAllById(ids: List<Int>): List<U> = transaction { direct.findAllById(ids) }

    override fun first(): U? = transaction { direct.first() }

    override fun updateById(id: Int, newU: U): U? = transaction { direct.updateById(id, newU) }

    override fun deleteById(id: Int) {
        transaction { direct.deleteById(id) }
    }

    override fun deleteAll(ids: List<Int>) {
        transaction { direct.deleteAll(ids) }
    }

    override fun all(): List<U> = transaction { direct.all() }
}

private class IntIdRepositorySqlDirect<E : IntEntity, U : EntityId>(
    private val entity: IntEntityClassTransformed<E, U>
) : IntIdRepository<U> {
    override fun create(u: U): U = entity.new { inject(u) }.toModel()

    override fun createWithId(id: Int, u: U): U = entity.new(id) { inject(u) }.toModel()

    override fun updateOrCreate(u: U): U =
        if (u.hasId()) updateById(u.id(), u) ?: create(u) else create(u)

    override fun findById(id: Int): U? = entity.findById(id)?.toModel()

    override fun findAllById(ids: List<Int>): List<U> = entity.forIds(ids).map { it.toModel() }

    override fun first(): U? = entity.all().firstOrNull()?.toModel()

    override fun updateById(id: Int, newU: U): U? =
        entity.findByIdAndUpdate(id) { it.inject(newU) }?.toModel()

    override fun deleteById(id: Int) {
        entity.findById(id)?.delete()
    }

    override fun deleteAll(ids: List<Int>) {
        entity.table.deleteWhere { entity.table.id inList ids }
    }

    override fun all(): List<U> = entity.all().map { it.toModel() }

    private fun E.inject(u: U) {
        with(entity) { u.inject(this@inject) }
    }

    private fun E.toModel(): U = with(entity) { this@toModel.toModel() }
}
