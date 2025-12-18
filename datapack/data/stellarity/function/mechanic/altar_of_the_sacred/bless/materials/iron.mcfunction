execute store result score #count stellarity.misc run data get storage stellarity:temp altar_of_the_sacred.item.count 10

scoreboard players set #mul stellarity.misc 60

function stellarity:mechanic/altar_of_the_sacred/bless/formula

execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.bless","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:resistance",duration:1,show_particles:1b,show_icon:1b,ambient:1b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}
execute at @p store result entity @n[type=area_effect_cloud,tag=stellarity.bless] potion_contents.custom_effects[{id:"minecraft:resistance"}].duration int 1 run scoreboard players get #time stellarity.misc

kill @s

function stellarity:mechanic/altar_of_the_sacred/bless/sfx
