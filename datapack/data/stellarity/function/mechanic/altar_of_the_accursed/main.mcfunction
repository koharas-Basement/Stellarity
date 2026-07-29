execute if entity @s[tag=!stellarity.altar_of_the_accursed_activated] if entity @e[type=item,distance=..1] run function stellarity:mechanic/altar_of_the_accursed/notice
execute if entity @s[tag=stellarity.altar_of_the_accursed_activated] run function stellarity:mechanic/altar_of_the_accursed/main_activated

execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..1,tag=stellarity.altar_of_the_accursed_display] run function stellarity:mechanic/altar_of_the_accursed/main_item_display