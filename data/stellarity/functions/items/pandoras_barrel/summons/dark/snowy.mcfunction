loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/snowy
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/snowy

summon stray ~ ~ ~
summon stray ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon zombie ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon spider ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon creeper ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon stray ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon zombie_villager ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/dark/snowy 
