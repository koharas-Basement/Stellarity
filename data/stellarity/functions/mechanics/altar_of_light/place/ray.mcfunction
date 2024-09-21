execute if block ~ ~ ~ minecraft:lodestone run function stellarity:mechanics/altar_of_light/place/hit_block
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..100 positioned ^ ^ ^0.1 run function stellarity:mechanics/altar_of_light/place/ray
