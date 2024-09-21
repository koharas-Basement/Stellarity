loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/badlands
execute if predicate kohara:chance/35percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/badlands

summon husk ~ ~ ~
summon husk ~ ~ ~
execute if predicate kohara:chance/25percent run summon zombie ~ ~ ~
execute if predicate kohara:chance/35percent run summon spider ~ ~ ~
execute if predicate kohara:chance/15percent run summon creeper ~ ~ ~
execute if predicate kohara:chance/25percent run summon skeleton ~ ~ ~

execute if predicate kohara:chance/25percent run function stellarity:items/pandoras_barrel/summons/dark/badlands 
