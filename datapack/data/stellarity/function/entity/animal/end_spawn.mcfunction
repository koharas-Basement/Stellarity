execute store result score #animal_count stellarity.misc if entity @e[type=vex,tag=stellarity.animal,distance=..128]

execute if score #animal_count stellarity.misc matches ..10 run function stellarity:entity/animal/spawn/start

tp ~ ~-70 ~
kill @s
