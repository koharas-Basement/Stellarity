scoreboard players set #hit stellarity.misc 1

fill ~ ~ ~ ~ ~ ~ shroomlight replace chiseled_quartz_block
execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~1 ~ {Tags:["stellarity.altar_of_the_light","stellarity.marker"]}
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:chiseled_quartz_block",Count:1b,tag:{CustomModelData:90000}}}

data modify entity @e[type=minecraft:item_display,limit=1,sort=nearest] transformation.scale set value [1.01f,1.01f,1.01f]
