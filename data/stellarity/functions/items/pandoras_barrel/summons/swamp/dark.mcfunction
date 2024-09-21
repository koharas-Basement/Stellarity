loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/swamp
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/swamp

summon slime ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon zombie ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon spider ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon cave_spider ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon zombie_villager ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon creeper ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon slime ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon skeleton ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/swamp/dark 
