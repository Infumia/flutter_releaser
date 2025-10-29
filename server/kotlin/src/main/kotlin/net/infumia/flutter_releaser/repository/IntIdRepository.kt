package net.infumia.flutter_releaser.repository

import net.infumia.flutter_releaser.EntityId

interface IntIdRepository<U : EntityId> : Repository<Int, U>
