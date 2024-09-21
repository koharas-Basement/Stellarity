loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/ocean
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/ocean

summon drowned ~ ~ ~
summon drowned ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon guardian ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon guardian ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon guardian ~ ~ ~
execute if predicate stellarity:utils/chance/5percent run summon elder_guardian ~ ~ ~


execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/dark/ocean 
