execute positioned ~ ~1 ~ unless predicate stellarity:items/pandoras_barrel/light_level_above_4 run scoreboard players set @s stellarity.misc3 0
execute positioned ~ ~1 ~ if predicate stellarity:items/pandoras_barrel/light_level_above_4 run scoreboard players set @s stellarity.misc3 1

# Generic draws for each vanilla dimension
execute if entity @s[scores={stellarity.misc2=-1,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/generic/dark
execute if entity @s[scores={stellarity.misc2=-1,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/generic/light
execute if entity @s[scores={stellarity.misc2=-2}] run function stellarity:items/pandoras_barrel/summons/generic/nether
execute if entity @s[scores={stellarity.misc2=-3}] run function stellarity:items/pandoras_barrel/summons/generic/end

# And now Overworld biome dependant shit
execute if entity @s[scores={stellarity.misc2=1,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/badlands
execute if entity @s[scores={stellarity.misc2=2,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/desert
execute if entity @s[scores={stellarity.misc2=3,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/forest
execute if entity @s[scores={stellarity.misc2=4,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/taiga
execute if entity @s[scores={stellarity.misc2=6,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/ocean
execute if entity @s[scores={stellarity.misc2=7,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/warm_ocean
execute if entity @s[scores={stellarity.misc2=8,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/savanna
execute if entity @s[scores={stellarity.misc2=9,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/hills
execute if entity @s[scores={stellarity.misc2=10,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/snowy
execute if entity @s[scores={stellarity.misc2=11,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/dripstone_caves
execute if entity @s[scores={stellarity.misc2=12,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/lush_caves
execute if entity @s[scores={stellarity.misc2=13,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/plains
execute if entity @s[scores={stellarity.misc2=14,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/flower_forest
execute if entity @s[scores={stellarity.misc2=15,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/jungle
execute if entity @s[scores={stellarity.misc2=16,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/birch_forest
execute if entity @s[scores={stellarity.misc2=17,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/dark/beach
execute if entity @s[scores={stellarity.misc2=20,stellarity.misc3=0}] run function stellarity:items/pandoras_barrel/summons/light/cherry_grove

execute if entity @s[scores={stellarity.misc2=1,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/badlands
execute if entity @s[scores={stellarity.misc2=2,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/desert
execute if entity @s[scores={stellarity.misc2=3,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/forest
execute if entity @s[scores={stellarity.misc2=4,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/taiga
execute if entity @s[scores={stellarity.misc2=6,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/ocean
execute if entity @s[scores={stellarity.misc2=7,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/warm_ocean
execute if entity @s[scores={stellarity.misc2=8,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/savanna
execute if entity @s[scores={stellarity.misc2=9,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/hills
execute if entity @s[scores={stellarity.misc2=10,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/snowy
execute if entity @s[scores={stellarity.misc2=11,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/dripstone_caves
execute if entity @s[scores={stellarity.misc2=12,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/lush_caves
execute if entity @s[scores={stellarity.misc2=13,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/plains
execute if entity @s[scores={stellarity.misc2=14,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/flower_forest
execute if entity @s[scores={stellarity.misc2=15,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/jungle
execute if entity @s[scores={stellarity.misc2=16,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/birch_forest
execute if entity @s[scores={stellarity.misc2=17,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/beach
execute if entity @s[scores={stellarity.misc2=20,stellarity.misc3=1}] run function stellarity:items/pandoras_barrel/summons/light/cherry_grove

## Swamp, Deep Dark and Mushroom Fields
# Swamp has special checks to also test for spawning of Gloop
# If Gloop spawns, nothing else is going to
execute if entity @s[scores={stellarity.misc2=18}] run function stellarity:items/pandoras_barrel/summons/swamp/random
# Deep Dark also has special checks, this time
# for whether to spawn Warden instead of loot
execute if entity @s[scores={stellarity.misc2=19}] run function stellarity:items/pandoras_barrel/summons/deep_dark/random
# Mushroom Fields do not have any darkness spawns
execute if entity @s[scores={stellarity.misc2=5}] run function stellarity:items/pandoras_barrel/summons/light/mushroom_fields

# Nether
execute if entity @s[scores={stellarity.misc2=-11}] run function stellarity:items/pandoras_barrel/summons/nether/nether_wastes
execute if entity @s[scores={stellarity.misc2=-12}] run function stellarity:items/pandoras_barrel/summons/nether/crimson_forest
execute if entity @s[scores={stellarity.misc2=-13}] run function stellarity:items/pandoras_barrel/summons/nether/warped_forest
execute if entity @s[scores={stellarity.misc2=-14}] run function stellarity:items/pandoras_barrel/summons/nether/soul_sand_valley
execute if entity @s[scores={stellarity.misc2=-15}] run function stellarity:items/pandoras_barrel/summons/nether/basalt_deltas

execute as @e[type=#stellarity:hostile,distance=..2] unless entity @s[type=creeper] run function stellarity:items/pandoras_barrel/buff_enemies

kill @s
