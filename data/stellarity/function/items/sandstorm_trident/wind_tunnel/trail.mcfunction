playsound minecraft:entity.firework_rocket.launch neutral @a ~ ~ ~ 2 1.8

scoreboard players add @s stellarity.items.sandstorm_trident.trail_pos 1 

summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["stellarity.wind_tunnel","stellarity.aec"]}

scoreboard players operation @n[type=area_effect_cloud,tag=stellarity.wind_tunnel] stellarity.items.sandstorm_trident.trail_pos = @s stellarity.items.sandstorm_trident.trail_pos
scoreboard players operation @n[type=area_effect_cloud,tag=stellarity.wind_tunnel] stellarity.items.sandstorm_trident.id = @s stellarity.items.sandstorm_trident.id
