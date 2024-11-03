## Items
function stellarity:items/main_player

# Totem of Undying gives Levitation when falling out of the world
execute if score #stellarity.config stellarity.config.enable_totem_void_saving matches 1 run \
    execute if entity @s[predicate=kohara:holding_a_totem,predicate=stellarity:locations/in_void] run function stellarity:mechanics/void_totem_protection/save

execute if entity @s[scores={kohara.flight_speed=1..},tag=!stellarity.elytra.flying] run function stellarity:mechanics/elytra/start_flying
execute if entity @s[tag=stellarity.elytra.flying] run function stellarity:mechanics/elytra/flying

# Timed loops
scoreboard players add @s stellarity.misc.loop.2t 1
execute if entity @s[scores={stellarity.misc.loop.2t=2..}] run function stellarity:loops/player/main_2t

scoreboard players add @s stellarity.misc.loop.3t 1
execute if entity @s[scores={stellarity.misc.loop.3t=3..}] run function stellarity:loops/player/main_3t

scoreboard players add @s stellarity.misc.loop.5t 1
execute if entity @s[scores={stellarity.misc.loop.5t=5..}] run function stellarity:loops/player/main_5t

scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[scores={stellarity.misc.loop.1s=20..}] run function stellarity:loops/player/main_1s
