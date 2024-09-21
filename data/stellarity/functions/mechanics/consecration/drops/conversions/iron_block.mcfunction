kill @s

loot spawn ~ ~ ~ loot stellarity:items/materials/hallowed_ingot

execute if score #count stellarity.misc matches 1..63 store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 2 run scoreboard players get #count stellarity.misc
execute if score #count stellarity.misc matches 64 run scoreboard players set #count2 stellarity.misc 126
execute if score #count stellarity.misc matches 64 store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count2 stellarity.misc

execute if score #count stellarity.misc matches 64 run loot spawn ~ ~ ~ loot stellarity:items/materials/hallowed_ingot
execute if score #count stellarity.misc matches 64 run loot spawn ~ ~ ~ loot stellarity:items/materials/hallowed_ingot

execute if score #count stellarity.misc matches ..63 run tag @e[type=item,limit=1,sort=nearest] add stellarity.consecration.ignore
execute if score #count stellarity.misc matches 64 run tag @e[type=item,limit=2,sort=nearest] add stellarity.consecration.ignore

function stellarity:mechanics/consecration/sfx
