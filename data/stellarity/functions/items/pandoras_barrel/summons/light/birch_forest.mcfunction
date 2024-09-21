loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/birch_forest
execute if predicate kohara:chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/birch_forest

summon pig ~ ~ ~
summon cow ~ ~ ~
execute if predicate kohara:chance/14percent run summon pig ~ ~ ~
execute if predicate kohara:chance/43percent run summon cow ~ ~ ~
execute if predicate kohara:chance/25percent run summon sheep ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/light/birch_forest 
