tag @s add stellarity.in_wind_tunnel
scoreboard players operation #id stellarity.misc = @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] stellarity.items.sandstorm_trident.id

summon block_display ~ ~ ~ {block_state:{Name:"air"},Tags:["stellarity.sandstorm_trident"],start_interpolation:-1,teleport_duration:0}
	
ride @s mount @n[type=block_display,tag=stellarity.sandstorm_trident]

scoreboard players operation @n[type=block_display,tag=stellarity.sandstorm_trident] stellarity.items.sandstorm_trident.id = #id stellarity.misc

summon marker ~ ~ ~ {Tags:["stellarity.sandstorm_trident.marker"],data:{steps:[],duration:[],step:0}}

# Travel speed is in segments per second
# One segment is 2.5 blocks long
scoreboard players set #step stellarity.misc 5

execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel.end] \
	if score @s stellarity.items.sandstorm_trident.id = #id stellarity.misc \
	run scoreboard players operation #teleport_distance stellarity.misc = @s stellarity.items.sandstorm_trident.trail_pos
scoreboard players operation #current_segment stellarity.misc = @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] stellarity.items.sandstorm_trident.trail_pos

scoreboard players operation #total_steps stellarity.misc = #teleport_distance stellarity.misc
scoreboard players operation #total_steps stellarity.misc /= #step stellarity.misc

scoreboard players reset #temp stellarity.misc
function stellarity:items/sandstorm_trident/wind_tunnel/movement/calculate_steps/loop
