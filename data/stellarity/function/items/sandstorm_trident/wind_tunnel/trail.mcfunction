scoreboard players add @s stellarity.items.sandstorm_trident.trail_pos 1 

# tellraw @a {"score": {"name": "@s","objective": "stellarity.items.sandstorm_trident.trail_pos"}}

particle minecraft:poof ~ ~ ~ 0 0 0 0.05 2

tp @n[type=marker,tag=stellarity.sandstorm_trident] ~ ~ ~
data modify entity @s Motion set from entity @n[type=marker,tag=stellarity.sandstorm_trident] data.Motion

summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["stellarity.wind_tunnel","stellarity.aec"]}
scoreboard players operation @n[type=area_effect_cloud,tag=stellarity.wind_tunnel] stellarity.items.sandstorm_trident.trail_pos = @s stellarity.items.sandstorm_trident.trail_pos
scoreboard players operation @n[type=area_effect_cloud,tag=stellarity.wind_tunnel] stellarity.items.sandstorm_trident.id = @s stellarity.items.sandstorm_trident.id
