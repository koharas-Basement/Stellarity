item replace entity @s armor.feet with leather_boots[dyed_color=3698838]
item replace entity @s[nbt={HandItems:[{id:"minecraft:bow"},{}]}] weapon.offhand with tipped_arrow[potion_contents="minecraft:slowness"] 64

data modify entity @s HandDropChances[1] set value 0f

execute if predicate kohara:chance/1percent run function stellarity:mobs/stat_buff/skeleton/harvester
