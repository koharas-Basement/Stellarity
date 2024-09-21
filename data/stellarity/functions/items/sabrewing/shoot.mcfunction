### THIS ITEM NO LONGER UTILIZES MATHS

execute store result score #power stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:power"}].lvl 1

execute as @e[type=#arrows,limit=1,sort=nearest] run function stellarity:items/sabrewing/charged_shots/as_arrow

playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1 1.5
