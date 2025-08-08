execute as @e[type=glow_item_frame,tag=stellarity.placed_block] at @s align xyz positioned ~.5 ~.5 ~.5 run function stellarity:block/place
execute as @e[type=item_display,tag=stellarity.block] at @s if block ~ ~ ~ #air run function stellarity:block/break with entity @s data."stellarity:block"
