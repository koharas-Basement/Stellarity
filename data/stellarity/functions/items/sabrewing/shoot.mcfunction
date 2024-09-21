execute if score @s stellarity.items.sabrewing.charge matches 85.. run summon marker ~ ~ ~ {Tags:["stellarity.items.sabrewing.marker","stellarity.marker"]}

execute as @e[type=#arrows,limit=1,sort=nearest] at @s run function stellarity:items/sabrewing/charged_shots/as_arrow/set

execute if score @s stellarity.items.sabrewing.charge matches 45..84 run playsound minecraft:item.trident.riptide_1 player @a[distance=0..] ~ ~ ~ 1 1.5
execute if score @s stellarity.items.sabrewing.charge matches 85..124 run playsound minecraft:item.trident.riptide_2 player @a[distance=0..] ~ ~ ~ 1 1.25
execute if score @s stellarity.items.sabrewing.charge matches 125.. run playsound minecraft:item.trident.riptide_3 player @a[distance=0..] ~ ~ ~ 1 1
