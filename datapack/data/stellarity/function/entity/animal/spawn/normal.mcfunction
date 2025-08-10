# Spawning normal mobs: chicken cow pig sheep

execute store result score #animal stellarity.misc run random value 1..5

execute if score #animal stellarity.misc matches 1 run summon chicken ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score #animal stellarity.misc matches 2 run summon cow ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score #animal stellarity.misc matches 3 run summon pig ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score #animal stellarity.misc matches 4 run summon sheep ~ ~ ~ {Color:15b,Tags:["stellarity.animal","smithed.entity"]}
execute if score #animal stellarity.misc matches 5 run summon wolf ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}

