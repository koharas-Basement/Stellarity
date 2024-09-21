loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/overworld
execute if predicate kohara:chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/overworld

summon pig ~ ~ ~
summon cow ~ ~ ~
execute if predicate kohara:chance/37percent run summon pig ~ ~ ~
execute if predicate kohara:chance/43percent run summon cow ~ ~ ~
execute if predicate kohara:chance/25percent run summon sheep ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/generic/light
