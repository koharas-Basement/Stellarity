loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/warm_ocean
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/warm_ocean

summon drowned ~ ~ ~
summon drowned ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon drowned ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon guardian ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon guardian ~ ~ ~
execute if predicate stellarity:utils/chance/7percent run summon elder_guardian ~ ~ ~


execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/dark/warm_ocean 
