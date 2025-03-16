summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.items.starless_scythe.cripple"],potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:0b,duration:1,show_particles:1b,show_icon:1b,ambient:0b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

execute store result entity @n[type=area_effect_cloud,tag=stellarity.items.starless_scythe.cripple] potion_contents.effects[{id:"minecraft:slowness"}].duration int 1 run scoreboard players get #cripple_duration stellarity.misc
