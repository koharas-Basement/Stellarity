## Items
function stellarity:items/main_player

## Advancements
# Super Sonic
# Fly through a one block gap with an Elytra while moving over 40m/s
execute if entity @s[advancements={stellarity:end_city/super_sonic=false},scores={kohara.flight_speed=200..}] unless block ^ ^1 ^ #kohara:non_solid unless block ^ ^-1 ^ #kohara:non_solid unless block ^1 ^ ^ #kohara:non_solid unless block ^-1 ^ ^ #kohara:non_solid run advancement grant @s only stellarity:end_city/super_sonic

# Totem of Undying gives Levitation when falling out of the world
execute if entity @s[predicate=kohara:holding_a_totem,predicate=stellarity:locations/in_void] run function stellarity:mechanics/void_totem_protection/save

## Elytras
# Trail
execute if entity @s[scores={kohara.flight_speed=80..}] run function stellarity:sfx/elytra_trail/main
# Boost nerf
execute if score #stellarity.config stellarity.config.nerf_elytra matches 1 if entity @s[predicate=kohara:player/has_boosted_with_elytra,gamemode=!creative,gamemode=!spectator] run function stellarity:mechanics/elytra_nerf/boost

scoreboard players add @s stellarity.misc.loop.2t 1
execute if entity @s[scores={stellarity.misc.loop.2t=2}] run function stellarity:loops/player_loop_2t

scoreboard players add @s stellarity.misc.loop.3t 1
execute if entity @s[scores={stellarity.misc.loop.3t=3}] run function stellarity:loops/player_loop_3t

scoreboard players add @s stellarity.misc.loop.5t 1
execute if entity @s[scores={stellarity.misc.loop.5t=5}] run function stellarity:loops/player_loop_5t

scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[scores={stellarity.misc.loop.1s=20}] run function stellarity:loops/player_loop_1s

scoreboard players add @s stellarity.misc.loop.10s 1
execute if entity @s[scores={stellarity.misc.loop.10s=200}] run function stellarity:loops/player_loop_10s
