execute if entity @s[tag=!stellarity.altar_of_the_accursed_activated] if entity @e[type=item,distance=..1] run function stellarity:mechanic/altar_of_the_accursed/notice
execute if entity @s[tag=stellarity.altar_of_the_accursed_activated] run function stellarity:mechanic/altar_of_the_accursed/main_activated
