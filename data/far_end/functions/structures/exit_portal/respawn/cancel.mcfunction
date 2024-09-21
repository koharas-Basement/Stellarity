execute if entity @e[type=marker,tag=stellarity.aota_activated] run function far_end:structures/exit_portal/activated/generate
execute unless entity @e[type=marker,tag=stellarity.aota_activated] run function far_end:structures/exit_portal/deactivated/generate

execute as @e[type=end_crystal,predicate=stellarity:locations/in_the_end,nbt={ShowBottom:1b}] at @s run function stellarity:visuals/dragon_respawn_animation/crystal_transition
execute as @e[type=end_crystal,tag=fe.respawn_crystal] at @s run function stellarity:visuals/dragon_respawn_animation/respawn_crystal_transition

scoreboard players reset @s fe.timer
tag @s remove fe.respawn

kill @e[type=marker,tag=stellarity.dragon_respawn.marker]
kill @e[type=marker,tag=stellarity.dragon_respawn.beam]

setblock 0 63 0 bedrock 
