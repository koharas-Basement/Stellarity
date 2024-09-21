tag @s remove stellarity.zephyr.killed_entity

execute store result score #duration stellarity.misc run data get entity @s ActiveEffects.[{Id:1,Amplifier:0b}].Duration 1

scoreboard players set #25seconds stellarity.misc 500
scoreboard players set #17seconds stellarity.misc 340
scoreboard players set #12seconds stellarity.misc 240
scoreboard players set #8seconds stellarity.misc 160
scoreboard players set #5seconds stellarity.misc 100
scoreboard players set #3seconds stellarity.misc 60

execute if score #duration stellarity.misc matches 2751..3300 run scoreboard players operation #duration stellarity.misc += #3seconds stellarity.misc
execute if score #duration stellarity.misc matches 2201..2750 run scoreboard players operation #duration stellarity.misc += #5seconds stellarity.misc
execute if score #duration stellarity.misc matches 1651..2200 run scoreboard players operation #duration stellarity.misc += #8seconds stellarity.misc
execute if score #duration stellarity.misc matches 1101..1650 run scoreboard players operation #duration stellarity.misc += #12seconds stellarity.misc
execute if score #duration stellarity.misc matches 551..1100 run scoreboard players operation #duration stellarity.misc += #17seconds stellarity.misc
execute if score #duration stellarity.misc matches ..550 run scoreboard players operation #duration stellarity.misc += #25seconds stellarity.misc

execute if score #duration stellarity.misc matches 3301.. run scoreboard players set #duration stellarity.misc 3300

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.items.zephyr"],Effects:[{Id:1,Amplifier:0,Duration:1}],Duration:2,ReapplicationDelay:0,WaitTime:-1, Age:-1}
execute store result entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.items.zephyr] Effects[{Id:1}].Duration int 1 run scoreboard players get #duration stellarity.misc
