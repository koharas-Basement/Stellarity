scoreboard players reset @s stellarity.items.spirit_dagger.consume_time

# Advancement
execute if score #distance stellarity.misc matches 600.. run advancement grant @s only stellarity:exploration/spirit_assasin

# Prevent any fall damage
effect give @s slow_falling 1 0 true

# Teleport
tp @s ~ ~-0.35 ~
tag @s add stellarity.spirit_dagger.teleport
schedule function stellarity:items/spirit_dagger/effects/scheduled_remove_tag 1t append

# Attack buffs
function stellarity:items/spirit_dagger/effects/buff

# Reset actionbar
title @s actionbar ""

## Enchantments
# Sweeping Edge
# Value is 5x higher than the actual level
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:sweeping"}].lvl 5
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:sweeping"}].lvl 5
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #sweeping stellarity.misc = #temp_1 stellarity.misc
# Fire Aspect
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #fire_aspect stellarity.misc = #temp_1 stellarity.misc
# Knockback
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #knockback stellarity.misc = #temp_1 stellarity.misc
# Bane of Arthropods
execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:bane_of_arthropods"}].lvl 1
execute store result score #temp_2 stellarity.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:bane_of_arthropods"}].lvl 1
scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
scoreboard players operation #bane stellarity.misc = #temp_1 stellarity.misc

# Damage
execute as @e[type=!#kohara:invalid_targets,distance=..3.8,predicate=!stellarity:items/holding/spirit_dagger/both,predicate=!kohara:player/is_sneaking] at @s run function stellarity:items/spirit_dagger/effects/damage

# Teleport slash effect
function stellarity:items/spirit_dagger/effects/teleport/slash

# Kill Spirit
kill @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.spirit_dagger.spirit]
kill @e[type=interaction,limit=1,sort=nearest,tag=stellarity.spirit_dagger.spirit]
kill @e[type=marker,limit=1,sort=nearest,tag=stellarity.spirit_dagger.spirit]
