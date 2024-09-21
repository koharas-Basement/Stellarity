loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/end
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/end

summon enderman ~ ~ ~
execute if predicate stellarity:utils/chance/40percent run summon enderman ~ ~ ~
execute if predicate stellarity:utils/chance/40percent run summon phantom ~ ~ ~
execute if predicate stellarity:utils/chance/40percent run summon phantom ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/generic/end
