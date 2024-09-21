### Exit Portal ###
execute as @e[type=minecraft:end_crystal] at @s run function far_end:structures/replace/exit_portal

execute as @e[type=minecraft:marker,tag=fe.structure] at @s run function far_end:structures/list
