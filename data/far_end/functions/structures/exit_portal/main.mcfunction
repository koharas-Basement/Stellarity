### Scoreboard Details ###
# fe.variable - the number of times the dragon is killed.
# fe.count - the number of end crystals set for respawning the dragon.
# fe.timer - tracks the death animation of the dragon.
#          - tracks the respawn animation of the dragon.

## Generation
# Generate the deactivated portal with ender dragon.
execute if entity @s[tag=fe.deactivated] run function far_end:structures/exit_portal/deactivated/animation_no_dragon
execute if entity @s[tag=fe.deactivated.spawn_dragon] run function far_end:structures/exit_portal/deactivated/animation

# Generate the activated portal once the dragon is killed.
execute if entity @s[tag=fe.activated] unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/activated/animation

## Respawn stuff
# Count the number of respawn Crystals placed
execute unless entity @e[type=minecraft:ender_dragon] run function far_end:structures/exit_portal/respawn/conditions
# Start the respawn animation
execute if entity @s[tag=fe.respawn] run function far_end:structures/exit_portal/respawn/animation

# Remove certain tags and add different ones once Dragon is dead
execute if entity @s[tag=fe.in_dragon_fight] unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/dragon/presence

# Post generation for Altar of the Accursed
# Can't really do it with pure Worldgen sadly
# Or I could, but definitely not in the way I would want to
execute if entity @s[tag=!stellarity.post_gen.initialized] in minecraft:the_end run function stellarity:post_gen/initialize

execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run function stellarity:mobs/dragon/ash