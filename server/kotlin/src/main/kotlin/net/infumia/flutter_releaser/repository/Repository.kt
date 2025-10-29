package net.infumia.flutter_releaser.repository

import net.infumia.flutter_releaser.EntityId

interface Repository<I, U : EntityId> {
    fun create(u: U): U

    fun createWithId(id: Int, u: U): U

    fun findById(id: I): U?

    fun findAllById(ids: List<I>): List<U>

    fun first(): U?

    fun updateOrCreate(u: U): U

    fun updateById(id: I, newU: U): U?

    fun deleteById(id: I)

    fun deleteAll(ids: List<I>)

    fun all(): List<U>
}
