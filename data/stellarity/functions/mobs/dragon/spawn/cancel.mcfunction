execute if score @s stellarity.dragon.times_killed matches 1.. run function far_end:structures/exit_portal/activated/generate
execute unless score @s stellarity.dragon.times_killed matches 1.. run function far_end:structures/exit_portal/deactivated/generate

execute as @e[type=end_crystal,predicate=stellarity:locations/in_the_end,nbt={ShowBottom:1b}] at @s run function stellarity:mobs/dragon/spawn/crystal_transitions/cancel
execute as @e[type=end_crystal,tag=fe.respawn_crystal] at @s run function stellarity:mobs/dragon/spawn/crystal_transitions/respawn

scoreboard players reset @s stellarity.dragon.respawn_animation_progress
tag @s remove fe.respawn

kill @e[type=marker,tag=stellarity.dragon_respawn.beam]

setblock 0 63 0 bedrock replace
