loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/ocean
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/ocean

summon cod ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon cod ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon salmon ~ ~ ~
execute if predicate stellarity:utils/chance/18percent run summon dolphin ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/ocean 
