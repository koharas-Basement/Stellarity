execute unless entity @s[type=!player,tag=stellarity.prismatic_inferno.burning] store result score @s stellarity.dot.prismatic_inferno.had_visual_fire run data get entity @s HasVisualFire

data modify entity @s[type=!player] HasVisualFire set value 1b
tag @s add stellarity.prismatic_inferno.burning

scoreboard players operation @s stellarity.dot.prismatic_inferno.damage = #dot.damage stellarity.misc
scoreboard players operation @s stellarity.dot.prismatic_inferno.delay = #dot.delay stellarity.misc
scoreboard players operation @s stellarity.dot.prismatic_inferno.time = #dot.time stellarity.misc

tag @s add kohara.status_effect.tick
