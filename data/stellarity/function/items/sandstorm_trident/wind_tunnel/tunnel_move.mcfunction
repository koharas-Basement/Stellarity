effect give @s slow_falling 1 0 true
tag @s add stellarity.wind_tunnel.moving

execute as @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] run function stellarity:items/sandstorm_trident/wind_tunnel/tunnel_move_get_data
execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] if score @s stellarity.items.sandstorm_trident.trail_pos = #temp stellarity.items.sandstorm_trident.trail_pos if score @s stellarity.items.sandstorm_trident.id = #temp stellarity.items.sandstorm_trident.id at @s run tp @e[tag=stellarity.wind_tunnel.moving] ~ ~ ~
execute unless entity @e[type=area_effect_cloud,tag=stellarity.wind_tunnel.end,distance=..3] run playsound minecraft:entity.firework_rocket.launch neutral @a ~ ~ ~ 1 0.5
tag @s remove stellarity.wind_tunnel.moving
