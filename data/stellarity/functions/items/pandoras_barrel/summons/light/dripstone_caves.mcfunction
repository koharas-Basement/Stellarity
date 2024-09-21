loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/dripstone_caves
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/dripstone_caves

summon bat ~ ~ ~
execute if predicate stellarity:utils/chance/33percent run summon glow_squid ~ ~ ~
execute if predicate stellarity:utils/chance/20percent run summon glow_squid ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/dripstone_caves 
