particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 0 force @a[distance=..32]
particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 force @a[distance=..32]

playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 0.25 2
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 0.25 1

playsound minecraft:ui.cartography_table.take_result block @a[distance=0..] ~ ~-.4 ~ 0.8 1.1
playsound minecraft:ui.loom.take_result block @a[distance=0..] ~ ~-.4 ~ 0.8 1.1

function stellarity:mechanics/altar_of_accursed/crafting/global_effects_wave

advancement grant @p only stellarity:aota/dye_elytra

execute as @e[type=item,tag=stellarity.aota.elytra,distance=..1.5,limit=1] unless data entity @s Item.tag."stellarity.elytra_color" run data modify entity @s Item.tag.display.Lore insert 0 value '{"translate":"item.dyed","color":"gray","italic":true}'
