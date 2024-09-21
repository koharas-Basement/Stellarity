execute if entity @s[tag=stellarity.perm_buffs.miracle_fruit] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.perm_buffs.miracle_fruit"],effects:[{id:"minecraft:regeneration",amplifier:5b,duration:1,show_particles:0b,show_icon:0b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

scoreboard players reset @s stellarity.misc.loop.10s
