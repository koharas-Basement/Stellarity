execute store result entity @s Rotation[0] float 1 run loot spawn ~ ~ ~ loot stellarity:utils/random_rotation

execute unless entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol.daytime] store result score @s stellarity.misc run loot spawn ~ ~ ~ loot stellarity:utils/eol/color

execute if score @s stellarity.misc matches 0 run tag @s add stellarity.eol.prismatic_bolt.red
execute if score @s stellarity.misc matches 1 run tag @s add stellarity.eol.prismatic_bolt.orange
execute if score @s stellarity.misc matches 2 run tag @s add stellarity.eol.prismatic_bolt.yellow
execute if score @s stellarity.misc matches 3 run tag @s add stellarity.eol.prismatic_bolt.lime
execute if score @s stellarity.misc matches 4 run tag @s add stellarity.eol.prismatic_bolt.aqua
execute if score @s stellarity.misc matches 5 run tag @s add stellarity.eol.prismatic_bolt.blue
execute if score @s stellarity.misc matches 6 run tag @s add stellarity.eol.prismatic_bolt.magenta
execute if score @s stellarity.misc matches 7 run tag @s add stellarity.eol.prismatic_bolt.purple

execute if entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol.daytime] run tag @s add stellarity.eol.prismatic_bolt.gold
