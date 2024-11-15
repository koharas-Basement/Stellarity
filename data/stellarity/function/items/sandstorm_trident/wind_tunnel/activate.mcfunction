scoreboard players operation #temp stellarity.items.sandstorm_trident.id = @s stellarity.items.sandstorm_trident.id

execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel] if score @s stellarity.items.sandstorm_trident.id = #temp stellarity.items.sandstorm_trident.id run tag @s add stellarity.wind_tunnel.activated
tag @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] add stellarity.wind_tunnel.end
tag @s add stellarity.sandstorm_trident.activated
