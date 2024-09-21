fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace air

execute align xyz run function stellarity:mechanics/void_fishing/biome_aec

execute if entity @p[predicate=stellarity:items/holding_fisher_of_voids] as @e[type=area_effect_cloud,tag=stellarity.void_fishing_aec,limit=1,sort=nearest] run tag @s add stellarity.using_fisher

tag @s add stellarity.checked_bobber

advancement grant @a[distance=20..23,limit=1,sort=nearest,x_rotation=0..90] only stellarity:husbandry/void_reels

execute if predicate stellarity:utils/below_y_0 run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"stellarity.void_fishing.warning","fallback": "Something tells you you should fish higher...","color":"dark_purple"}
