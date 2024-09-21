particle cloud ~ ~ ~ .125 .125 .125 0 3 force

playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 2

execute if score @s stellarity.misc matches ..4 run tp @s ^ ^ ^0.44 ~ ~
execute if score @s stellarity.misc matches 5.. facing entity @p[tag=stellarity.zephyr.killed_entity] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.44 ~ ~

execute positioned ~ ~-1 ~ if entity @a[distance=..1,tag=stellarity.zephyr.killed_entity] positioned ~ ~1 ~ run function stellarity:items/zephyr/speed_boost

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @p[tag=stellarity.zephyr.killed_entity] eyes run function stellarity:items/zephyr/ray/start_ray

# Age
scoreboard players add @s stellarity.misc 1
