execute as @p[tag=stellarity.zephyr.killed_entity] at @s run function stellarity:items/zephyr/as_player

playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.66 1.5

particle dust_color_transition 1 1 1 1 0.9 0.9 0.9 ^ ^ ^ 0 0 0 0 10 normal

kill @s
