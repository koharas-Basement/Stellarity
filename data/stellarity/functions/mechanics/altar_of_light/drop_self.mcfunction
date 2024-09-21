kill @s

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:shroomlight"}}]
kill @e[type=item_display,limit=1,sort=nearest]

loot spawn ~ ~-1 ~ loot stellarity:items/altar_of_light
