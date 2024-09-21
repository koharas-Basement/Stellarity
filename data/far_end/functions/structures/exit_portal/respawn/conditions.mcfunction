### Count Respawn Crystal ###
execute as @e[type=minecraft:end_crystal,distance=..4,tag=!fe.respawn_crystal] if predicate far_end:mobs/ender_dragon/respawn/end_crystal_north run tag @s add fe.respawn_crystal
execute as @e[type=minecraft:end_crystal,distance=..4,tag=!fe.respawn_crystal] if predicate far_end:mobs/ender_dragon/respawn/end_crystal_east run tag @s add fe.respawn_crystal
execute as @e[type=minecraft:end_crystal,distance=..4,tag=!fe.respawn_crystal] if predicate far_end:mobs/ender_dragon/respawn/end_crystal_south run tag @s add fe.respawn_crystal
execute as @e[type=minecraft:end_crystal,distance=..4,tag=!fe.respawn_crystal] if predicate far_end:mobs/ender_dragon/respawn/end_crystal_west run tag @s add fe.respawn_crystal
execute at @e[type=minecraft:end_crystal,tag=fe.respawn_crystal] run setblock ~ ~ ~ minecraft:soul_fire
execute at @e[type=minecraft:end_crystal,tag=fe.respawn_crystal] run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 1 normal
execute store result score @s fe.count run execute if entity @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal]
tag @s[scores={fe.count=4},tag=!fe.respawn] add fe.respawn
