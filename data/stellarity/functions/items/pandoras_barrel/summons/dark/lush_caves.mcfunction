loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/lush_caves
execute if predicate stellarity:utils/chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/lush_caves

summon drowned ~ ~ ~
summon zombie ~ ~ ~
execute if predicate stellarity:utils/chance/35percent run summon cave_spider ~ ~ ~
execute if predicate stellarity:utils/chance/15percent run summon creeper ~ ~ ~
execute if predicate stellarity:utils/chance/25percent run summon skeleton ~ ~ ~

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/dark/lush_caves 
