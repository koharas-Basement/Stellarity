### Scoreboard Details ###
# stellarity.dragon.times_killed - the number of times the dragon is killed ## Bound to the portal marker.
# #respawn_crystal_count stellarity.misc - number of respawn crystals on the podium ## Global scoreboard not bound to an entity.
# stellarity.dragon.respawn_animation_progress - timer for respawn animation ## Bound to the portal marker.

## Generation
# Generate the deactivated portal with ender dragon.
execute if entity @s[tag=fe.deactivated] run function far_end:structures/exit_portal/deactivated/animation_no_dragon
execute if entity @s[tag=fe.deactivated.spawn_dragon] run function far_end:structures/exit_portal/deactivated/animation

# Generate the activated portal once the dragon is killed.
execute if entity @s[tag=fe.activated] unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/activated/animation

## Respawn stuff
# Count the number of respawn Crystals placed
execute unless entity @e[type=minecraft:ender_dragon] run function stellarity:mobs/dragon/spawn/conditions
# Start the respawn animation
execute if entity @s[tag=fe.respawn] run function stellarity:mobs/dragon/spawn/animation

# Remove certain tags and add different ones once Dragon is dead
execute if entity @s[tag=fe.in_dragon_fight] unless entity @e[type=minecraft:ender_dragon,tag=fe.mob,tag=fe.ender_dragon,distance=..300] run function far_end:structures/exit_portal/dragon/presence

# Post generation for Altar of the Accursed
# Can't really do it with pure Worldgen sadly
# Or I could, but definitely not in the way I would want to
execute if entity @s[tag=!stellarity.post_gen.initialized] in minecraft:the_end run function stellarity:post_gen/initialize

# Dragon Screenshake
execute if entity @s[tag=fe.respawn] as @a[tag=stellarity.dragon.screenshake] at @s run function stellarity:mobs/dragon/spawn/screenshake/tick_up
execute if entity @s[tag=!fe.respawn] as @a[tag=stellarity.dragon.screenshake] at @s run function stellarity:mobs/dragon/spawn/screenshake/tick_down

execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run function stellarity:mobs/dragon/ash
