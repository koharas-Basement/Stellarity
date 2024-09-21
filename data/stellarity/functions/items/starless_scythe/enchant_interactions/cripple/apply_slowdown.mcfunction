summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.items.starless_scythe.cripple"],effects:[{id:"minecraft:slowness",amplifier:0b,duration:1,show_particles:1b,show_icon:1b,ambient:0b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

execute store result entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.items.starless_scythe.cripple] effects[{id:"minecraft:slowness"}].duration int 1 run scoreboard players get #cripple_duration stellarity.misc
