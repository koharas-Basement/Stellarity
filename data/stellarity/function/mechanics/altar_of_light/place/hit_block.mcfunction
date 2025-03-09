scoreboard players set #hit stellarity.misc 1

fill ~ ~ ~ ~ ~ ~ crying_obsidian replace chiseled_quartz_block
execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~1 ~ {Tags:["stellarity.altar_of_the_light","stellarity.marker"]}
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:chiseled_quartz_block",count:1,components:{"minecraft:item_model":"stellarity:altar_of_the_sacred"}},brightness:{block:15,sky:15}}

execute align xyz positioned ~.5 ~0.5 ~.5 run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 21 normal
execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.amethyst_cluster.place block @a[distance=0..] ~ ~ ~ 1 0.5

data modify entity @n[type=minecraft:item_display] transformation.scale set value [1.01f,1.01f,1.01f]

scoreboard players set @n[type=marker,tag=stellarity.altar_of_the_light] stellarity.mechanics.altar_of_the_sacred.timer 230
