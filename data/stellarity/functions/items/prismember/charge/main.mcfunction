execute unless score @s stellarity.items.prismember.charge matches 10.. run scoreboard players add @s stellarity.items.prismember.charge 1
scoreboard players set @s stellarity.items.prismember.until_charge_reset 2

title @s[scores={stellarity.items.prismember.charge=1..7}] actionbar [{"text":"•","color":"#EEEEEE"},{"text":" 🗡 ","color":"#FF6565"},{"score":{"name": "@s","objective": "stellarity.items.prismember.charge"},"color":"#FF6565"},{"text":"/","color":"#EEEEEE"},{"text":"8","color":"#FFB867"},{"text":" 🔥 ","color":"#FFB867"},{"text":"•","color":"#EEEEEE"}]
title @s[scores={stellarity.items.prismember.charge=8}] actionbar [{"text":"•","color":"#EEEEEE"},{"text":" 🗡 ","color":"#FF6565"},{"text":"ATT","color":"#FF6565"},{"text":"ACK","color":"#FFB867"},{"text":" 🔥 ","color":"#FFB867"},{"text":"•","color":"#EEEEEE"}]

execute if score @s stellarity.items.prismember.charge matches 1 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 0.5
execute if score @s stellarity.items.prismember.charge matches 2 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 0.642
execute if score @s stellarity.items.prismember.charge matches 3 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 0.784
execute if score @s stellarity.items.prismember.charge matches 4 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 0.926
execute if score @s stellarity.items.prismember.charge matches 5 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 1.068
execute if score @s stellarity.items.prismember.charge matches 6 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 1.21
execute if score @s stellarity.items.prismember.charge matches 7 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 1.352

execute if score @s[tag=!stellarity.items.prismember.ready] stellarity.items.prismember.charge matches 8 run function stellarity:items/prismember/charge/ready

execute if entity @s[tag=stellarity.items.prismember.ready] anchored eyes positioned ^ ^ ^ run tp @e[type=interaction,tag=stellarity.prismember,limit=1,sort=nearest] ~ ~-.35 ~
