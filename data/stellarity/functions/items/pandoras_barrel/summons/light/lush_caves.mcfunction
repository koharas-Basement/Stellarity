loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/lush_caves
execute if predicate kohara:chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/lush_caves

summon bat ~ ~ ~
summon tropical_fish ~ ~ ~
summon axolotl ~ ~ ~
execute if predicate kohara:chance/33percent run summon glow_squid ~ ~ ~
execute if predicate kohara:chance/20percent run summon axolotl ~ ~ ~
execute if predicate kohara:chance/40percent run summon tropical_fish ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/light/lush_caves 
