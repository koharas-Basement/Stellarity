#execute if score #current_segment stellarity.misc >= #teleport_distance stellarity.misc run scoreboard players set #current

# How much did we overshoot it?
scoreboard players operation #diff stellarity.misc = #current_segment stellarity.misc
scoreboard players operation #diff stellarity.misc -= #teleport_distance stellarity.misc

scoreboard players operation #duration stellarity.misc = #step stellarity.misc
scoreboard players operation #duration stellarity.misc -= #diff stellarity.misc
scoreboard players operation #duration stellarity.misc *= #ticks_per_segment stellarity.misc

execute store result storage stellarity:temp sandstorm_trident.math.step int 1 run scoreboard players get #teleport_distance stellarity.misc
execute store result storage stellarity:temp sandstorm_trident.math.duration int 1 run scoreboard players get #duration stellarity.misc

function stellarity:items/sandstorm_trident/wind_tunnel/movement/calculate_steps/macro_append with storage stellarity:temp sandstorm_trident.math
 