loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/nether
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/nether

summon zombified_piglin ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon blaze ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon piglin ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon wither_skeleton ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon magma_cube ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/generic/nether
