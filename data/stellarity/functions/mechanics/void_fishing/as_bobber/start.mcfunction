fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace air

execute align xyz positioned ~0.5 ~-0.5 ~0.5 run function stellarity:mechanics/void_fishing/as_bobber/biome_aec

execute if entity @p[predicate=stellarity:items/holding_fisher_of_voids] as @e[type=area_effect_cloud,tag=stellarity.void_fishing_aec,limit=1,sort=nearest] run tag @s add stellarity.using_fisher

execute as @e[type=area_effect_cloud,tag=stellarity.void_fishing_aec,limit=1,sort=nearest] run function stellarity:mechanics/void_fishing/as_aec/lure

tag @s add stellarity.checked_bobber
