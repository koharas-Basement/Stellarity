loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/nether_wastes
execute if predicate kohara:chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/nether_wastes

summon zombified_piglin ~ ~ ~
summon zombified_piglin ~ ~ ~
execute if predicate kohara:chance/30percent run summon zombified_piglin ~ ~ ~
execute if predicate kohara:chance/20percent run summon blaze ~ ~ ~
execute if predicate kohara:chance/35percent run summon piglin ~ ~ ~
execute if predicate kohara:chance/8percent run summon piglin_brute ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/nether/nether_wastes
