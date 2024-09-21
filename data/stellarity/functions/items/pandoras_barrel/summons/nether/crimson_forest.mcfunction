loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/crimson_forest
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/nether/crimson_forest

summon piglin ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon piglin ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon zombified_piglin ~ ~ ~
execute if predicate stellarity:utils/chance/10percent run summon piglin_brute ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon hoglin ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/nether/crimson_forest
