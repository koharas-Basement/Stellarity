particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 0 force @a[distance=..32]
particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 force @a[distance=..32]

playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 0.25 2
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 0.25 1

playsound minecraft:ui.cartography_table.take_result block @a[distance=0..] ~ ~-.4 ~ 0.8 1.1
playsound minecraft:ui.loom.take_result block @a[distance=0..] ~ ~-.4 ~ 0.8 1.1

# function stellarity:mechanic/altar_of_the_accursed/crafting/global_effects_wave

tag @n[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra] add stellarity.altar_of_the_accursed.skip
kill @e[type=item,distance=..1.5,tag=!stellarity.altar_of_the_accursed.minecraft.elytra]

advancement grant @p only stellarity:altar_of_the_accursed/dye_elytra

$execute as @n[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] unless data entity @s Item.components."minecraft:custom_data"."stellarity.elytra_color" run data modify entity @s Item.components."minecraft:lore" insert 0 value {"translate":"item.dyed","color":$(color),"italic":true}
