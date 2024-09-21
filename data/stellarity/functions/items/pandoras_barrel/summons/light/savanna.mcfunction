loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/savanna
execute if predicate kohara:chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/savanna

summon llama ~ ~ ~
execute if predicate kohara:chance/15percent run summon pig ~ ~ ~
execute if predicate kohara:chance/25percent run summon cow ~ ~ ~
execute if predicate kohara:chance/25percent run summon sheep ~ ~ ~
execute if predicate kohara:chance/30percent run summon sheep ~ ~ ~
execute if predicate kohara:chance/30percent run summon llama ~ ~ ~
execute if predicate kohara:chance/30percent run summon horse ~ ~ ~
execute if predicate kohara:chance/30percent run summon donkey ~ ~ ~
execute if predicate kohara:chance/10percent run summon villager ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/light/savanna 
