loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/forest
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/forest

summon pig ~ ~ ~
summon cow ~ ~ ~
execute if predicate stellarity:utils/chance/14percent run summon pig ~ ~ ~
execute if predicate stellarity:utils/chance/43percent run summon cow ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon sheep ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/forest 
