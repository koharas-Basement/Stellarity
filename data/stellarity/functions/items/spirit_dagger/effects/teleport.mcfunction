scoreboard players reset @s stellarity.items.spirit_dagger.consume_time

# Advancement
execute if score #distance stellarity.misc matches 600.. run advancement grant @s only stellarity:exploration/spirit_assasin

# Prevent any fall damage
effect give @s slow_falling 1 0 true

# Teleport
tp @s ~ ~-0.2 ~
tag @s add stellarity.spirit_dagger.teleport
schedule function stellarity:items/spirit_dagger/effects/scheduled_remove_tag 1t append

# Attack buffs
function stellarity:items/spirit_dagger/effects/buff

# Reset actionbar
title @s actionbar ""

# Damage
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:sweeping"}].lvl 5
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:sweeping"}].lvl 5
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #sweeping stellarity.misc = #temp_1 stellarity.misc

execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #fire_aspect stellarity.misc = #temp_1 stellarity.misc

execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #knockback stellarity.misc = #temp_1 stellarity.misc

execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:bane_of_arthropods"}].lvl 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:bane_of_arthropods"}].lvl 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #bane stellarity.misc = #temp_1 stellarity.misc

execute as @e[type=!#stellarity:invalid_targets,distance=..4,predicate=!stellarity:items/spirit_dagger/holding,predicate=!stellarity:utils/player/is_sneaking] at @s run function stellarity:items/spirit_dagger/effects/damage

# Visuals
function stellarity:items/spirit_dagger/effects/teleport/visuals

# Sounds
function stellarity:items/spirit_dagger/effects/teleport/sounds

# Kill Spirit
kill @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.spirit_dagger.spirit]
