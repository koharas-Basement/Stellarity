summon marker ~ ~ ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[0f, -60f]}

execute as @n[type=marker,tag=stellarity.eol.prismatic_bolt] at @s run function stellarity:mob/eol/attacks/code/prismatic_bolts/post_spawn

playsound minecraft:entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 1
