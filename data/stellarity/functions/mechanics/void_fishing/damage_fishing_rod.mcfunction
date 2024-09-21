# Simplified Unbreaking formula
scoreboard players set in stellarity.misc 1
execute if score #mainhand stellarity.misc matches 1 store result score in1 stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{"id":"minecraft:unbreaking"}].lvl 1
execute if score #offhand stellarity.misc matches 1 store result score in1 stellarity.misc run data get entity @s Inventory.[{Slot:-106b}].tag.Enchantments.[{"id":"minecraft:unbreaking"}].lvl 1
scoreboard players set #1 stellarity.misc 1
scoreboard players operation in1 stellarity.misc += #1 stellarity.misc

function stellarity:utils/rng/range

# Get current damage and increase it by 2
execute if score #mainhand stellarity.misc matches 1 store result score #damage stellarity.misc run data get entity @s SelectedItem.tag.Damage 1
execute if score #offhand stellarity.misc matches 1 store result score #damage stellarity.misc run data get entity @s Inventory.[{Slot:-106b}].tag.Damage 1

scoreboard players set #2 stellarity.misc 2
scoreboard players operation #damage stellarity.misc += #2 stellarity.misc

execute store result storage stellarity:temp void_fishing_damage int 1 run scoreboard players get #damage stellarity.misc

# And finally damage the right item!
execute if score out stellarity.misc matches 1 if score #mainhand stellarity.misc matches 1 run item modify entity @s weapon.mainhand stellarity:void_fishing_damage_rod
execute if score out stellarity.misc matches 1 if score #offhand stellarity.misc matches 1 run item modify entity @s weapon.offhand stellarity:void_fishing_damage_rod

# For custom durability
function stellarity:utils/custom_durability/handle_durability
