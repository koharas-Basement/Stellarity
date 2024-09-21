tag @s remove stellarity.items.starless_scythe.heal

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.starless_scythe"],effects:[{id:"minecraft:regeneration",amplifier:5b,duration:2,show_particles:0b,show_icon:0b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

particle dust_color_transition 1 0.918 0 1 0.294 0.165 0.376 ~ ~1 ~ .3 .5 .3 0 25 normal @a
particle dust_color_transition 1 0.918 0 1.5 0.294 0.165 0.376 ~ ~1 ~ .3 .5 .3 0 5 normal @a

playsound minecraft:block.chorus_flower.grow player @a[distance=0..] ~ ~ ~
