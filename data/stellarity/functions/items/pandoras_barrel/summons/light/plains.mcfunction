loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/plains
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/plains

summon pig ~ ~ ~
execute if predicate stellarity:utils/chance/23percent run summon pig ~ ~ ~
execute if predicate stellarity:utils/chance/43percent run summon cow ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon sheep ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon horse ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon donkey ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon bee ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/plains 
