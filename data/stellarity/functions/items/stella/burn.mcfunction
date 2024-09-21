execute unless score @s stellarity.items.stella.fire_stacks matches 5.. run scoreboard players add @s stellarity.items.stella.fire_stacks 1

execute if score @s stellarity.items.stella.fire_stacks matches 1 run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 .6
execute if score @s stellarity.items.stella.fire_stacks matches 2 run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 .8
execute if score @s stellarity.items.stella.fire_stacks matches 3 run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 1
execute if score @s stellarity.items.stella.fire_stacks matches 4 run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 1.2
execute if score @s stellarity.items.stella.fire_stacks matches 5 run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 1.4

scoreboard players set #dot.damage stellarity.misc 15

scoreboard players operation #dot.damage stellarity.misc *= @s stellarity.items.stella.fire_stacks
scoreboard players set #dot.time stellarity.misc 100
scoreboard players set #dot.delay stellarity.misc 20

function stellarity:utils/dot/prismatic_inferno/apply
