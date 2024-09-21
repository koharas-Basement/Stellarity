loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/dripstone_caves
execute if predicate kohara:chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/dripstone_caves

summon bat ~ ~ ~
execute if predicate kohara:chance/33percent run summon glow_squid ~ ~ ~
execute if predicate kohara:chance/20percent run summon glow_squid ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/light/dripstone_caves 
