# Timers
scoreboard players add @s stellarity.items.prismatic_punch.particle_cycle 1
scoreboard players add @s stellarity.misc 1
scoreboard players remove @s stellarity.items.prismatic_punch.piercing_cooldown 1

# Accelerating projectile
# Starting velocity: 0 blocks/second
# Acceleration: 4 blocks/second squared
# Final velocity: 6 blocks/second
execute if score @s stellarity.misc matches 1 run scoreboard players set @s stellarity.items.prismatic_punch.teleport 40
execute store result storage stellarity:temp prismatic_punch.distance float 0.01 run scoreboard players get @s stellarity.items.prismatic_punch.teleport
function stellarity:items/prismatic_punch/move with storage stellarity:temp prismatic_punch
scoreboard players add @s[scores={stellarity.items.prismatic_punch.teleport=..600}] stellarity.items.prismatic_punch.teleport 12

execute if score @s stellarity.misc matches 2.. run function stellarity:items/prismatic_punch/blast_particles

# Detonation
execute unless score @s stellarity.items.prismatic_punch.piercing_cooldown matches 1.. anchored eyes if entity @e[type=!#kohara:invalid_targets,distance=..2.5,predicate=!stellarity:items/holding_prismatic_punch] run function stellarity:items/prismatic_punch/detonate/start

execute if score @s stellarity.misc matches 100 run function stellarity:items/prismatic_punch/detonate/start_absolute
