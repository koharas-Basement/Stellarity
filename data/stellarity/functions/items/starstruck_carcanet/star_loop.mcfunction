tp @s ^ ^ ^.99

scoreboard players add @s stellarity.misc 1

particle minecraft:firework ~ ~ ~ 0 0 0 0.01 2 force
execute if score @s stellarity.misc matches 2 run playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 0.3 2
execute if score @s stellarity.misc matches 2 run scoreboard players reset @s stellarity.misc

execute if entity @s[tag=!stellarity.carcanet.air] if block ^ ^ ^ #stellarity:non_solid run tag @s add stellarity.carcanet.air
execute if entity @s[tag=stellarity.carcanet.air] unless block ^ ^ ^.99 #stellarity:non_solid run function stellarity:items/starstruck_carcanet/star_detonate
