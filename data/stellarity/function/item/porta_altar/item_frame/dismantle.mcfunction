kill @n[type=#kohara:item_frames,nbt={Fixed:1b}]
kill @n[type=item_display,tag=stellarity.porta_altar.stationary]

execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..10] run loot spawn ~ ~-1 ~ loot stellarity:item/porta_altar

kill @s
