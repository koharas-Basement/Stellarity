particle witch ~ ~ ~ .1 .1 .1 0.1 2 force

team join stellarity.purple_glow @s

data modify entity @s Glowing set value 0b
execute unless block ~ ~ ~ #stellarity:non_solid run data modify entity @s Glowing set value 1b
