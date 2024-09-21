scoreboard players add #bolts stellarity.misc 1

execute if score #bolts stellarity.misc matches 1 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[0f, 0f]}
execute if score #bolts stellarity.misc matches 2 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[45f, 0f]}
execute if score #bolts stellarity.misc matches 3 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[90f, 0f]}
execute if score #bolts stellarity.misc matches 4 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[135f, 0f]}
execute if score #bolts stellarity.misc matches 5 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[180f, 0f]}
execute if score #bolts stellarity.misc matches 6 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[225f, 0f]}
execute if score #bolts stellarity.misc matches 7 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[270f, 0f]}
execute if score #bolts stellarity.misc matches 8 run summon marker ~ ~1.33 ~ {Tags:["stellarity.eol.prismatic_bolt","stellarity.marker"],Rotation:[315f, 0f]}

execute as @e[type=marker,tag=stellarity.eol.prismatic_bolt,limit=1,sort=nearest] at @s run function stellarity:mobs/eol/attacks/code/prismatic_bolts/post_spawn

playsound minecraft:entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 1
