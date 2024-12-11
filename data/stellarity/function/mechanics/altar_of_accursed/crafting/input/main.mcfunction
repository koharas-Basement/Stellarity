execute unless entity @s[tag=stellarity.aota.checked_type] run function stellarity:mechanics/altar_of_accursed/crafting/input/add_type_tag/add

execute unless score @s stellarity.aota.count matches ..2147483647 run function stellarity:mechanics/altar_of_accursed/crafting/input/count
execute store result score @s stellarity.aota.count run data get entity @s Item.count

data merge entity @s {PickupDelay:21s,Glowing:1b}
team join stellarity.purple_glow @s
