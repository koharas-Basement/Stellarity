scoreboard players operation @s stellarity.items.sabrewing.charge = @p[predicate=stellarity:items/holding_sabrewing] stellarity.items.sabrewing.charge

execute if score @s stellarity.items.sabrewing.charge matches 45..84 run function stellarity:items/sabrewing/charged_shots/as_arrow/1
execute if score @s stellarity.items.sabrewing.charge matches 85..124 run function stellarity:items/sabrewing/charged_shots/as_arrow/2
execute if score @s stellarity.items.sabrewing.charge matches 125.. run function stellarity:items/sabrewing/charged_shots/as_arrow/3

tag @s add stellarity.items.sabrewing.arrow

data modify entity @s pickup set value 0b
