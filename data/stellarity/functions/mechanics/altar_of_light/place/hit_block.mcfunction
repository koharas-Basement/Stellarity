scoreboard players set #hit stellarity.misc 1

fill ~ ~ ~ ~ ~ ~ shroomlight replace chiseled_quartz_block
execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~1 ~ {Tags:["stellarity.altar_of_the_light","stellarity.marker"]}
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:chiseled_quartz_block",Count:1b,tag:{CustomModelData:90000}}}

execute align xyz positioned ~.5 ~0.5 ~.5 run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 21 normal
execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.amethyst_cluster.place block @a[distance=0..] ~ ~ ~ 1 0.5
execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.shroomlight.place block @a[distance=0..] ~ ~ ~ 1 0.8

data modify entity @e[type=minecraft:item_display,limit=1,sort=nearest] transformation.scale set value [1.01f,1.01f,1.01f]

scoreboard players set @e[type=marker,limit=1,sort=nearest,tag=stellarity.altar_of_the_light] stellarity.mechanics.altar_of_the_sacred.timer 230
