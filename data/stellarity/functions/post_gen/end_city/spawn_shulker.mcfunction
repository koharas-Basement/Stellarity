fill ~ ~-1 ~ ~ ~1 ~ air replace observer
setblock ~ ~ ~ air

execute store result score #random stellarity.misc run random value 1..100

#! BASE SHULER HEALTH IS NOW 40!!
#! BASE DAMAGE HAS ALSO BEEN INCREASED TO 7
#! PLUS THEY HAVE A FLAT 20% DAMAGE REDUCTION!!!

# White Shulker - 5%
# +10 Health
# 4 damage
# Applies Weakness I for 2 seconds on hit
execute if score #random stellarity.misc matches 1..5 run \
	summon shulker ~ ~-1 ~ {Color:0,Health:50,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Tags:["stellarity.end_city.white_shulker"],Attributes:[{Name:"generic.max_health",Base:50d}]}

# Orange Shulker - 9%
# -5 Defense
# 4 damage
# Burns player on hit
execute if score #random stellarity.misc matches 6..14 run \
	summon shulker ~ ~-1 ~ {Color:1,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Tags:["stellarity.end_city.orange_shulker"],Health:40,Attributes:[{Name:"generic.max_health",Base:40d},{Name:"generic.armor",Base:-5d}]}

# Pink Shulker - 8%
# Permanent Regeneration I, -10 Health
# 5 damage
# Heals itself 3 HP on hit
execute if score #random stellarity.misc matches 15..22 run \
	summon shulker ~ ~-1 ~ {Color:6,Health:30,Tags:["stellarity.end_city.pink_shulker"],active_effects:[{id:"minecraft:regeneration",duration:-1,amplifier:0,show_particles:1b,ambient:1b},{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Attributes:[{Name:"generic.max_health",Base:30d}]}

# Magenta Shulker - 6%
# 4 damage with 100% armor penetration
execute if score #random stellarity.misc matches 23..28 run \
	summon shulker ~ ~-1 ~ {Color:2,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Tags:["stellarity.end_city.magenta_shulker"],Health:40,Attributes:[{Name:"generic.max_health",Base:40d}]}

# Purple Shulker - 7% 
# -5 Health, +15 Armor Toughness
# 7 non-projectile damage
execute if score #random stellarity.misc matches 29..35 run \
	summon shulker ~ ~-1 ~ {Color:10,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Health:35,Tags:["stellarity.end_city.purple_shulker"],Attributes:[{Name:"generic.armor_toughness",Base:15d},{Name:"generic.max_health",Base:35d}]}

# Lime Shulker - 8%
# -10 Health
# 5 damage
# Applies Poison I for 10 seconds on hit
execute if score #random stellarity.misc matches 36..43 run \
	summon shulker ~ ~-1 ~ {Color:5,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Health:30,Tags:["stellarity.end_city.lime_shulker"],Attributes:[{Name:"generic.max_health",Base:30d}]}

# Black Shulker - 6%
# -10 Health
# 6 damage
# Applies Wither I for 10 seconds on hit
execute if score #random stellarity.misc matches 44..49 run \
	summon shulker ~ ~-1 ~ {Color:15,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Health:30,Tags:["stellarity.end_city.black_shulker"],Attributes:[{Name:"generic.max_health",Base:30d}]}

# Blue Shulker - 9%
# -5 Defense
# 5 damage
# Applies Slowness I for 9 seconds on hit
# Applies Frostburn for 4 seconds on hit
execute if score #random stellarity.misc matches 50..58 run \
	summon shulker ~ ~-1 ~ {Color:3,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Health:40,Tags:["stellarity.end_city.blue_shulker"],Attributes:[{Name:"generic.max_health",Base:40d},{Name:"generic.armor",Base:-5d}]}

# Red Shulker - 7%
# -10 Defense
# 9 damage
# Deals Explosive damage which splashes to all nearby players
execute if score #random stellarity.misc matches 59..65 run \
	summon shulker ~ ~-1 ~ {Color:3,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Health:40,Tags:["stellarity.end_city.blue_shulker"],Attributes:[{Name:"generic.max_health",Base:40d},{Name:"generic.armor",Base:-10d}]}

# Regular Shulker - 35%
# 7 damage
execute if score #random stellarity.misc matches 66..100 run \
	summon shulker ~ ~-1 ~ {Color:16,active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b,ambient:0b}],Health:40,Tags:["stellarity.end_city.normal_shulker"],Attributes:[{Name:"generic.max_health",Base:40d}]}
