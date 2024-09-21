loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/mushroom_fields
execute if predicate fokastudio:end/utils/chance/15percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/mushroom_fields

summon mooshroom ~ ~1.7 ~ {Type:"red"}
summon mooshroom ~ ~1.7 ~ {Type:"red"}
execute if predicate fokastudio:end/utils/chance/33percent run summon mooshroom ~ ~1.7 ~ {Type:"red"}
execute if predicate fokastudio:end/utils/chance/7percent run summon mooshroom ~ ~1.7 ~ {Type:"brown"}

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/mushroom_fields_light
