execute if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["stellarity:dragons_den","minecraft:the_end"]}} run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"stellarity.void_fishing.warning.dragons_den","color":"dark_purple"}

execute if predicate stellarity:location/below_y_0 run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"stellarity.void_fishing.warning.too_deep","color":"dark_purple"}

execute unless predicate {"condition":"minecraft:location_check","predicate":{"biomes":["stellarity:dragons_den","minecraft:the_end"]}} \
    unless predicate stellarity:location/below_y_0 \
    run function stellarity:mechanic/void_fishing/as_bobber/start
