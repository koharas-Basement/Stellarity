execute if biome ~ ~ ~ stellarity:dragons_den run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"stellarity.void_fishing.warning.dragons_den","fallback": "No fish dares to enter this area...","color":"dark_purple"}


execute unless biome ~ ~ ~ stellarity:dragons_den if predicate stellarity:locations/below_y_0 run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"stellarity.void_fishing.warning.too_deep","fallback": "Something tells you you should fish higher...","color":"dark_purple"}

execute unless biome ~ ~ ~ stellarity:dragons_den unless predicate stellarity:locations/below_y_0 if biome ~ ~ ~ #stellarity:biomes/all run function stellarity:mechanics/void_fishing/as_bobber/start
