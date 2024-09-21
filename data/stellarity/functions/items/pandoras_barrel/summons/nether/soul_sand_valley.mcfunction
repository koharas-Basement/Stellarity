loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/soul_sand_valley
execute if predicate kohara:chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/soul_sand_valley

summon skeleton ~ ~ ~
execute if predicate kohara:chance/35percent run summon skeleton ~ ~ ~
execute if predicate kohara:chance/25percent run summon wither_skeleton ~ ~ ~
execute if predicate kohara:chance/7percent run summon ghast ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/nether/soul_sand_valley
