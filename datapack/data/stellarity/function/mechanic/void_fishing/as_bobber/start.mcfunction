tag @s add stellarity.checked_bobber

execute align y positioned ~ ~-0.1 ~ summon area_effect_cloud run function stellarity:mechanic/void_fishing/as_bobber/biome_aec
function stellarity:mechanic/void_fishing/as_aec/wave

# ride @s mount @n[type=area_effect_cloud,tag=stellarity.void_fishing.aec]

advancement grant @p only stellarity:void_fishing/void_reels
