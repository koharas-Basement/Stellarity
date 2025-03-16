execute unless entity @s[tag=stellarity.aota.checked_type] run function stellarity:mechanic/altar_of_accursed/crafting/input/add_type_tag/add

execute store result score @s stellarity.aota.count run data get entity @s Item.count

data merge entity @s {PickupDelay:21s,Glowing:1b}
team join stellarity.purple_glow @s
