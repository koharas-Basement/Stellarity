execute store result score #animal_count stellarity.misc if entity @e[type=#stellarity:end_variant_animals,tag=stellarity.animal,distance=..128]

# MODIFY THE NUMBER IF YOU WANNA CHANGE MOB CAP FOR SERVER OWNERS
  execute if score #animal_count stellarity.misc matches ..30 run function stellarity:entity/animal/spawn/start

tp ~ ~-70 ~
kill @s
