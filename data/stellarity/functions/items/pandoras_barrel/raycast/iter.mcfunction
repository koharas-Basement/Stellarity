execute if block ~ ~ ~ barrel run function stellarity:items/pandoras_barrel/raycast/hit_block
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..1000 positioned ^ ^ ^0.01 run function stellarity:items/pandoras_barrel/raycast/iter
