execute as @e[type=#stellarity:stat_buff,distance=..5,tag=!stellarity.aware,tag=!stellarity.buffed] run function stellarity:mobs/convert_to_end_variants

execute unless block ~ ~ ~ trial_spawner run kill @s
