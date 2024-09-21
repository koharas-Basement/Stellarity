loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/jungle
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/jungle

summon ocelot ~ ~ ~
summon parrot ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon parrot ~ ~ ~
execute if predicate stellarity:utils/chance/30percent run summon ocelot ~ ~ ~
execute if predicate stellarity:utils/chance/20percent run summon panda ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/jungle 
