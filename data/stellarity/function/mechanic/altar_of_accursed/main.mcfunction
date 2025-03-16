execute if entity @s[tag=!stellarity.aota_activated] if entity @e[type=item,distance=..1] run function stellarity:mechanic/altar_of_accursed/notice
execute if entity @s[tag=stellarity.aota_activated] run function stellarity:mechanic/altar_of_accursed/main_activated
