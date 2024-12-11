particle minecraft:dust{color:[0.914, 0.0, 0.639], scale:1.0} ~ ~-.4 ~ .33 .33 .33 0 24 normal
function stellarity:mechanics/altar_of_accursed/crafting/dye_elytra/effects

execute as @n[type=item,distance=..1.5,tag=stellarity.aota.minecraft.elytra] run data modify entity @s Item.components."minecraft:custom_data"."stellarity.elytra_color" set value magenta
