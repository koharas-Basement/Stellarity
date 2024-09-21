kill @s

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:shroomlight"}}]
execute positioned ~ ~1 ~ run kill @e[type=marker,limit=1,sort=nearest,distance=..0.01,tag=stellarity.altar_of_the_light]

execute as @p store result score #has_altar stellarity.misc run clear @s[gamemode=creative] chiseled_quartz_block{stellarity.special_item:"altar_of_light"} 0
execute unless score #has_altar stellarity.misc matches 1.. run loot spawn ~ ~ ~ loot stellarity:items/altar_of_light

execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.amethyst_cluster.break block @a[distance=0..] ~ ~ ~ 1 0.5
execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.stone.break block @a[distance=0..] ~ ~ ~ 1 0.8

execute align xyz positioned ~.5 ~0.5 ~.5 run particle block chiseled_quartz_block ~ ~ ~ 0.4 0.4 0.4 1 40
execute align xyz positioned ~.5 ~0.5 ~.5 run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 21 normal
