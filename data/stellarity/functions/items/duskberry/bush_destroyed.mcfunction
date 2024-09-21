kill @s

execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..0.25] run kill @s

execute if entity @p[gamemode=!creative,gamemode=!spectator] run loot spawn ~ ~.1 ~ loot stellarity:items/trinkets/duskberry
