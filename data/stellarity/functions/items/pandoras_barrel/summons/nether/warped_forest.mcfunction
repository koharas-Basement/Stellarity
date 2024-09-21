loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/warped_forest
execute if predicate kohara:chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/warped_forest

summon enderman ~ ~ ~
execute if predicate kohara:chance/50percent run summon enderman ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/nether/warped_forest
