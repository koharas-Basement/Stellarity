summon experience_orb ~ ~ ~

execute store result score #random stellarity.misc run random value 2..9

execute store result entity @e[type=experience_orb,limit=1,sort=nearest] Value short 1 run scoreboard players get #random stellarity.misc
