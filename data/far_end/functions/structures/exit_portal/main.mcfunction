### Scoreboard Details ###
# fe.variable - the number of times the dragon is killed.
# fe.count - the number of end crystals set for respawning the dragon.
# fe.timer - tracks the death animation of the dragon.
#          - tracks the respawn animation of the dragon.

### Generation ###
# generate the deactivated portal with ender dragon.
execute as @s[tag=fe.deactivated] at @s run function far_end:structures/exit_portal/deactivated/animation

# generate the activated portal once the dragon is killed.
execute as @s[tag=fe.activated] at @s unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/activated/animation

### Dragon Respawn ###
# count the number of respawn crystals placed.
execute as @s[scores={fe.variable=1..}] at @s unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/respawn/conditions

# start the respawn animation.
execute as @s[tag=fe.respawn] at @s run function far_end:structures/exit_portal/respawn/animation

### Generate End Gateway ###
execute as @s[tag=fe.generate_gateway] at @s run function far_end:structures/exit_portal/gateway/choose_location

### Dragon Presence ###
execute as @s[tag=fe.in_dragon_fight] at @s unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/dragon/presence
