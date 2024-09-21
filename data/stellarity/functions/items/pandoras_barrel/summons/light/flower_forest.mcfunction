loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/flower_forest
execute if predicate kohara:chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/flower_forest

summon pig ~ ~ ~
summon cow ~ ~ ~
execute if predicate kohara:chance/25percent run summon sheep ~ ~ ~
execute if predicate kohara:chance/30percent run summon bee ~ ~ ~
execute if predicate kohara:chance/30percent run summon bee ~ ~ ~


execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/light/flower_forest 
