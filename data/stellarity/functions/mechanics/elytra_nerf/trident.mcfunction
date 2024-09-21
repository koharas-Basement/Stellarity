# Get which hand the Trident is being held in
scoreboard players set #mainhand stellarity.misc 0
execute if data storage stellarity:temp {elytra_nerf:{player_data:{SelectedItem:{id:"minecraft:trident"}}}} run scoreboard players set #mainhand stellarity.misc 1
scoreboard players set #offhand stellarity.misc 0
execute if data storage stellarity:temp {elytra_nerf:{player_data:{Inventory:[{Slot:-106b,id:"minecraft:trident"}]}}} run scoreboard players set #offhand stellarity.misc 1
# Mimic vanilla behavior
execute if score #mainhand stellarity.misc matches 1 run scoreboard players set #offhand stellarity.misc 0

execute if score #mainhand stellarity.misc matches 1 store result score #enchantment stellarity.misc run data get storage stellarity:temp elytra_nerf.player_data.SelectedItem.tag.Enchantments.[{id:"minecraft:riptide"}].lvl 2
execute if score #offhand stellarity.misc matches 1 store result score #enchantment stellarity.misc run data get storage stellarity:temp elytra_nerf.player_data.Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:riptide"}].lvl 2

scoreboard players set #temp stellarity.misc 6
scoreboard players operation #temp stellarity.misc += #enchantment stellarity.misc
