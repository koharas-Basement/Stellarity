execute unless entity @s[type=!player,tag=stellarity.prismatic_inferno.burning] store result score @s stellarity.dot.prismatic_inferno.had_visual_fire run data get entity @s HasVisualFire

data merge entity @s[type=!player] {HasVisualFire:1b}
tag @s add stellarity.prismatic_inferno.burning

scoreboard players set #19 stellarity.misc 19
scoreboard players operation #dot.time stellarity.misc += #19 stellarity.misc

scoreboard players operation @s stellarity.dot.prismatic_inferno.time = #dot.time stellarity.misc

tag @s add kohara.status_effect.tick
