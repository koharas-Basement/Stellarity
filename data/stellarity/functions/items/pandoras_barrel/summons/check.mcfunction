# Generic draws for each vanilla dimension
execute if score @s stellarity.items.pandoras_barrel.summon_id matches -1 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/generic/light
execute if score @s stellarity.items.pandoras_barrel.summon_id matches -1 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/generic/dark

execute if score @s stellarity.items.pandoras_barrel.summon_id matches -2 run function stellarity:items/pandoras_barrel/summons/generic/nether

execute if score @s stellarity.items.pandoras_barrel.summon_id matches -3 run function stellarity:items/pandoras_barrel/summons/generic/end

# And now Overworld biome dependant shit
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 1 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/badlands
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 1 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/badlands

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 2 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/desert
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 2 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/desert

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 3 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/forest
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 3 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/forest

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 4 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/taiga
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 4 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/taiga

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 5 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/mushroom_fields
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 5 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/mushroom_fields

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 6 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/ocean
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 6 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/ocean

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 7 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/warm_ocean
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 7 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/warm_ocean

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 8 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/savanna
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 8 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/savanna

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 9 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/hills
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 9 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/hills

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 10 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/snowy
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 10 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/snowy

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 11 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/dripstone_caves
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 11 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/dripstone_caves

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 12 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/lush_caves
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 12 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/lush_caves

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 13 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/plains
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 13 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/plains

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 14 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/flower_forest
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 14 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/flower_forest

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 15 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/jungle
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 15 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/jungle

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 16 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/birch_forest
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 16 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/birch_forest

execute if score @s stellarity.items.pandoras_barrel.summon_id matches 17 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/light/beach
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 17 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/dark/beach

# Swamp has special checks to also test for spawning of Gloop
# If Gloop spawns, nothing else is going to
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 18 run function stellarity:items/pandoras_barrel/summons/swamp/random

# Deep Dark also has special checks, this time
# for whether to spawn Warden instead of loot
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 19 run function stellarity:items/pandoras_barrel/summons/deep_dark/random

# Nether
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 20 run function stellarity:items/pandoras_barrel/summons/nether/nether_wastes
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 21 run function stellarity:items/pandoras_barrel/summons/nether/crimson_forest
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 22 run function stellarity:items/pandoras_barrel/summons/nether/warped_forest
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 23 run function stellarity:items/pandoras_barrel/summons/nether/soul_sand_valley
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 24 run function stellarity:items/pandoras_barrel/summons/nether/basalt_deltas

execute as @e[type=#stellarity:hostile,distance=..2] unless entity @s[type=creeper] run function stellarity:items/pandoras_barrel/buff_enemies

kill @s
