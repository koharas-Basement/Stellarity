ride @n[type=minecraft:fishing_bobber] mount @s

data merge entity @s {Radius:0,Tags:["stellarity.void_fishing.aec","stellarity.aec"],Duration:2147483647}
data modify entity @s Particle.block_state set from storage stellarity:temp void_fishing.particle

execute if entity @p[predicate=stellarity:item/holding/fisher_of_voids] run tag @s add stellarity.using_fisher

function stellarity:mechanic/void_fishing/as_aec/lure
function stellarity:mechanic/void_fishing/as_aec/roll_time/roll
