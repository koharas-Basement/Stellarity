loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/basalt_deltas
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/basalt_deltas

summon magma_cube ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon magma_cube ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon strider ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon strider ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/nether/basalt_deltas
