loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/warm_ocean
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/warm_ocean

summon tropical_fish ~ ~ ~
summon tropical_fish ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon tropical_fish ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon pufferfish ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon dolphin ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/warm_ocean 
