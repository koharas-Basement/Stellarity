loot spawn ~ ~ ~ loot stellarity:pandoras_barrel/drops/mushroom_fields

summon mooshroom ~ ~ ~ {Type:"red"}
execute if predicate kohara:chance/40percent run summon mooshroom ~ ~ ~ {Type:"red"}
execute if predicate kohara:chance/5percent run summon mooshroom ~ ~ ~ {Type:"brown"}
