scoreboard players add @s stellarity.misc 1

execute if entity @s[tag=stellarity.scheduled_tp] run function stellarity:items/sandstorm_trident/wind_tunnel/movement/get_step/teleport
execute unless score @s stellarity.misc2 matches ..2147483647 run function stellarity:items/sandstorm_trident/wind_tunnel/movement/get_step/get_marker_data

execute if score @s stellarity.misc matches 1.. if predicate {"condition":"minecraft:inverted","term":{"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{}}}} run function stellarity:items/sandstorm_trident/wind_tunnel/movement/remove_block_display
execute unless entity @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated,distance=..5] run function stellarity:items/sandstorm_trident/wind_tunnel/movement/remove_block_display

 execute if score @s stellarity.misc = @s stellarity.misc2 run function stellarity:items/sandstorm_trident/wind_tunnel/movement/reset_scores

 teleport @n[type=marker,tag=stellarity.sandstorm_trident.marker] ~ ~ ~

execute if score @s stellarity.misc2 matches 0 run function stellarity:items/sandstorm_trident/wind_tunnel/movement/remove_block_display
