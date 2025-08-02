# Spawning normal mobs: chicken cow pig sheep

execute store result score @s stellarity.random_number run random value 1..4

execute if score @s stellarity.random_number matches 1 run summon chicken ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score @s stellarity.random_number matches 2 run summon cow ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score @s stellarity.random_number matches 3 run summon pig ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score @s stellarity.random_number matches 4 run summon sheep ~ ~ ~ {Color:15b,Tags:["stellarity.animal","smithed.entity"]}

