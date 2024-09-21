loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/mushroom_fields
execute if predicate stellarity:utils/chance/15percent run loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/mushroom_fields

summon mooshroom ~ ~ ~ {Type:"red"}
summon mooshroom ~ ~ ~ {Type:"red"}
execute if predicate stellarity:utils/chance/13percent run summon mooshroom ~ ~ ~ {Type:"brown"}

execute if predicate stellarity:utils/chance/25percent run function stellarity:items/pandoras_barrel/summons/light/mushroom_fields 
