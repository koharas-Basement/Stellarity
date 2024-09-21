execute store result score #count stellarity.misc run data get storage stellarity:temp aots.item.Count 10

scoreboard players set #mul stellarity.misc 60

function stellarity:mechanics/altar_of_light/bless/formula

execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.bless"],effects:[{id:"minecraft:resistance",amplifier:0b,duration:1,show_particles:1b,show_icon:1b,ambient:1b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}
execute at @p store result entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.bless] effects[{id:"minecraft:resistance"}].duration int 1 run scoreboard players get #time stellarity.misc

kill @s

function stellarity:mechanics/altar_of_light/bless/sfx
