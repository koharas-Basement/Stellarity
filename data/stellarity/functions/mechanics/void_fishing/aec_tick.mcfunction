# Initialize Lure enchant
# If no Lure enchant is found, it is set to 0
execute if score @s stellarity.mechanics.void_fishing_length matches 1 store result score @s stellarity.misc run data get entity @p[predicate=stellarity:void_fishing/holding_fishing_rod] SelectedItem.tag.Enchantments.[{id:"minecraft:lure"}].lvl 1

# Adds 1 per tick to time
scoreboard players add @s stellarity.mechanics.void_fishing_length 1
# 18% chance to add <INSERT LEVEL OF LURE ENCHANT> to overall time
execute if predicate stellarity:utils/chance/18percent run scoreboard players operation @s stellarity.mechanics.void_fishing_length += @s stellarity.misc
# Extra 25% chance to add 1 if using Fisher of Voids
execute if entity @s[tag=stellarity.using_fisher] if predicate stellarity:utils/chance/25percent run scoreboard players add @s stellarity.mechanics.void_fishing_length 1

## It's fishing time!
# 0.5% chance EVERY TICK to fish smth after 5 seconds (by default, excluding bonuses)
execute if score @s stellarity.mechanics.void_fishing_length matches 100..199 if predicate stellarity:void_fishing/chance/0_5 run function stellarity:mechanics/void_fishing/fish
# 1% chance EVERY TICK to fish smth after 10 seconds
execute if score @s stellarity.mechanics.void_fishing_length matches 200..299 if predicate stellarity:void_fishing/chance/1 run function stellarity:mechanics/void_fishing/fish
# 1.5% chance EVERY TICK to fish smth after 15 seconds
execute if score @s stellarity.mechanics.void_fishing_length matches 300..399 if predicate stellarity:void_fishing/chance/1_5 run function stellarity:mechanics/void_fishing/fish
# And a guaranteed catch after 20 seconds
execute if score @s stellarity.mechanics.void_fishing_length matches 400.. run function stellarity:mechanics/void_fishing/fish

# Stop the process if Fishing Bobber is not present
# This also removes the Area Effect Cloud after fishing out an item
execute unless entity @e[type=fishing_bobber,tag=stellarity.checked_bobber,distance=..2,limit=1] run function stellarity:mechanics/void_fishing/stop
