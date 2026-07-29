execute if block ~ ~ ~ minecraft:end_portal_frame run function stellarity:mechanic/altar_of_the_accursed/place/hit_block
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..1000 positioned ^ ^ ^0.01 run function stellarity:mechanic/altar_of_the_accursed/place/ray
