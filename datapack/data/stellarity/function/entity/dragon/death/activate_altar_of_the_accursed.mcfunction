say activate
# execute in minecraft:the_end positioned 42 67 -48 unless entity @e[type=marker,tag=stellarity.altar_of_the_accursed,distance=..16] run say true activate
# execute in minecraft:the_end positioned 42 67 -48 if entity @e[type=marker,tag=stellarity.altar_of_the_accursed,distance=..16] run say altar found


execute in minecraft:the_end positioned 42 67 -48 unless entity @e[type=marker,tag=stellarity.altar_of_the_accursed,distance=..16] run place template stellarity:altar_of_the_accursed 42 67 -48 none none 1 666

execute as @e[type=marker,tag=stellarity.altar_of_the_accursed,tag=!stellarity.altar_of_the_accursed_activated] at @s run function stellarity:mechanic/altar_of_the_accursed/activate/animation
