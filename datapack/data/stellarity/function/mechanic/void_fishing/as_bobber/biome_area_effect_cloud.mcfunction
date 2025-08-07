ride @n[type=minecraft:fishing_bobber] mount @s

data merge entity @s {Radius:0,Tags:["stellarity.void_fishing.area_effect_cloud","stellarity.area_effect_cloud"],Duration:2147483647}
data modify entity @s custom_particle.block_state set from storage stellarity:temp void_fishing.particle

execute if entity @p[predicate=stellarity:item/holding/fisher_of_voids] run tag @s add stellarity.using_fisher

function stellarity:mechanic/void_fishing/as_area_effect_cloud/lure
function stellarity:mechanic/void_fishing/as_area_effect_cloud/roll_time/roll
