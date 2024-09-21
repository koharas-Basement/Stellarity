# Count respawn crystals
execute as @e[type=minecraft:end_crystal,tag=!fe.respawn_crystal,distance=..5] run function far_end:structures/exit_portal/respawn/crystal_loop 

execute as @e[type=end_crystal,tag=fe.respawn_crystal] at @s run function far_end:structures/exit_portal/respawn/crystal_visuals

execute store result score @s fe.count if entity @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal]
tag @s[scores={fe.count=4},tag=!fe.respawn] add fe.respawn
