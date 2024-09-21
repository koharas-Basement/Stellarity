scoreboard players add #loop_count stellarity.misc 1

execute store result storage stellarity:temp pandoras_barrel.motion_x double 0.01 run random value -17..17
execute store result storage stellarity:temp pandoras_barrel.motion_y double 0.01 run random value 45..70
execute store result storage stellarity:temp pandoras_barrel.motion_z double 0.01 run random value -17..17

function stellarity:items/pandoras_barrel/animation/item/macro with storage stellarity:temp pandoras_barrel

execute unless score #loop_count stellarity.misc matches 9.. run function stellarity:items/pandoras_barrel/animation/item/loop
execute if score #loop_count stellarity.misc matches 9.. run scoreboard players reset #loop_count stellarity.misc
