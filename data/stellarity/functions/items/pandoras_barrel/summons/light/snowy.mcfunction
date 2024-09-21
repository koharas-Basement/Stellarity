loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/snowy
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/snowy

summon rabbit ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon goat ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/snowy 
