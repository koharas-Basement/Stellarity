loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/birch_forest
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/birch_forest

summon zombie ~ ~ ~
summon zombie ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon zombie ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon spider ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon zombie_villager ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon creeper ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon skeleton ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/dark/birch_forest 
