loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/jungle
execute if predicate kohara:chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/jungle

summon ocelot ~ ~ ~
summon parrot ~ ~ ~
execute if predicate kohara:chance/30percent run summon parrot ~ ~ ~
execute if predicate kohara:chance/30percent run summon ocelot ~ ~ ~
execute if predicate kohara:chance/20percent run summon panda ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/light/jungle 
