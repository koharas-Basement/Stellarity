tag @s add stellarity.items.prismatic_pearl.buffed_velocity

execute store result score #velocity.x stellarity.misc run data get entity @s Motion[0] 10000
execute store result score #velocity.y stellarity.misc run data get entity @s Motion[1] 10000
execute store result score #velocity.z stellarity.misc run data get entity @s Motion[2] 10000

execute store result entity @s Motion[0] double 0.000125 run scoreboard players get #velocity.x stellarity.misc
execute store result entity @s Motion[1] double 0.000125 run scoreboard players get #velocity.y stellarity.misc
execute store result entity @s Motion[2] double 0.000125 run scoreboard players get #velocity.z stellarity.misc
