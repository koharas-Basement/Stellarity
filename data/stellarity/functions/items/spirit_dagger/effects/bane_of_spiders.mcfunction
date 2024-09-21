scoreboard players set in stellarity.misc 20
scoreboard players set in1 stellarity.misc 30

scoreboard players set #10 stellarity.misc 10
scoreboard players operation #add stellarity.misc = #bane stellarity.misc
scoreboard players operation #add stellarity.misc *= #10 stellarity.misc

scoreboard players operation in1 stellarity.misc += #add stellarity.misc

function stellarity:utils/rng/range

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.items.spirit_dagger.bane"],Effects:[{Id:2,Amplifier:3,Duration:10}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}
execute store result entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.items.spirit_dagger.bane] Effects[{Id:2}].Duration int 1 run scoreboard players get out stellarity.misc
