scoreboard players reset @s stellarity.items.spirit_dagger.consume_time

# Advancement
execute if score #distance stellarity.misc matches 600.. run advancement grant @s only stellarity:exploration/spirit_assasin

# Prevent any fall damage
effect give @s slow_falling 1 0 true

# Teleport
tp @s ~ ~-0.35 ~
tag @s add stellarity.spirit_dagger.teleport
schedule function stellarity:item/spirit_dagger/effects/scheduled_remove_tag 1t append

# Attack buffs
function stellarity:item/spirit_dagger/effects/buff

# Reset actionbar
title @s actionbar ""

## Enchantments
# Sweeping Edge
# Value is 5x higher than the actual level
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sweeping_edge" 5
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."minecraft:sweeping_edge" 5
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #sweeping stellarity.misc = #temp_1 stellarity.misc
# Fire Aspect
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:fire_aspect" 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."minecraft:fire_aspect" 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #fire_aspect stellarity.misc = #temp_1 stellarity.misc
# Knockback
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:knockback" 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."minecraft:knockback" 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #knockback stellarity.misc = #temp_1 stellarity.misc
# Bane of Arthropods
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:bane_of_arthropods" 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."minecraft:bane_of_arthropods" 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #bane stellarity.misc = #temp_1 stellarity.misc

# Damage
execute as @e[type=!#kohara:invalid_targets,distance=..3.8,predicate=!stellarity:item/holding/spirit_dagger/both,predicate=!kohara:player/is_sneaking] at @s run function stellarity:item/spirit_dagger/effects/damage

# Teleport slash effect
function stellarity:item/spirit_dagger/effects/teleport/slash

# Kill Spirit
kill @n[type=armor_stand,tag=stellarity.spirit_dagger.spirit]
kill @n[type=interaction,tag=stellarity.spirit_dagger.spirit]
kill @n[type=marker,tag=stellarity.spirit_dagger.spirit]
