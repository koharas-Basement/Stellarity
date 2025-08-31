$loot replace entity @s contents loot $(loot_table)

data modify entity @s data set from entity @s item.components."minecraft:entity_data".data
