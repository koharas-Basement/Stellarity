# Variables from parent function:
#    #step
#    #total_steps
#    #teleport_distance
#    #current_segment
# Everything uses 'stellarity.misc' scoreboard ofc

scoreboard players operation #current_segment stellarity.misc += #step stellarity.misc

# Increase this value and you will decrease
# travel speed and vice versa
scoreboard players set #ticks_per_segment stellarity.misc 3
scoreboard players operation #duration stellarity.misc = #step stellarity.misc
scoreboard players operation #duration stellarity.misc *= #ticks_per_segment stellarity.misc

# If currently evaluated segment's number exceeds total number of segments,
# do some other special math stuff and then exit the loop
execute if score #current_segment stellarity.misc >= #teleport_distance stellarity.misc run function stellarity:items/sandstorm_trident/wind_tunnel/movement/calculate_steps/exit_loop
execute if score #current_segment stellarity.misc >= #teleport_distance stellarity.misc run return 1

execute store result storage stellarity:temp sandstorm_trident.math.step int 1 run scoreboard players get #current_segment stellarity.misc
execute store result storage stellarity:temp sandstorm_trident.math.duration int 1 run scoreboard players get #duration stellarity.misc

function stellarity:items/sandstorm_trident/wind_tunnel/movement/calculate_steps/macro_append with storage stellarity:temp sandstorm_trident.math

# Will it crash with too long tunnels? Ofc it will
# But if I want to make this at least slightly configurable then whateva :3
function stellarity:items/sandstorm_trident/wind_tunnel/movement/calculate_steps/loop
