loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/end
execute if predicate kohara:chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/generic/end

summon enderman ~ ~ ~
execute if predicate kohara:chance/40percent run summon enderman ~ ~ ~
execute if predicate kohara:chance/40percent run summon phantom ~ ~ ~
execute if predicate kohara:chance/40percent run summon phantom ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/generic/end
