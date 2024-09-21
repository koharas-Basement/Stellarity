# Count respawn crystals
execute as @e[type=minecraft:end_crystal,tag=!stellarity.ticked,distance=..5] at @s run function stellarity:mobs/dragon/spawn/respawn_crystal/check

execute store result score #respawn_crystal_count stellarity.misc if entity @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal]
execute store result score #total_crystal_count stellarity.misc if entity @e[type=minecraft:end_crystal,distance=..5]
execute if score #respawn_crystal_count stellarity.misc matches 4 \ 
	if score #total_crystal_count stellarity.misc matches 4 run \
	tag @s[tag=!fe.respawn] add fe.respawn
