loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/taiga
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/taiga

summon fox ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon pig ~ ~ ~
execute if predicate stellarity:utils/chance/45percent run summon cow ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon sheep ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon sheep ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon fox ~ ~ ~
execute if predicate stellarity:utils/chance/10percent run summon villager ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/taiga 
