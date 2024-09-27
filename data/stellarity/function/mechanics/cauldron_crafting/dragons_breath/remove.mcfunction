execute as @e[type=item_display,distance=..1.1,tag=stellarity.brewing.item_display] run function stellarity:mechanics/cauldron_crafting/dragons_breath/display_drop_item with entity @s item

kill @e[type=item_display,distance=..1.1]
kill @e[type=interaction,distance=..1.1]

kill @s
