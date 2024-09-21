summon experience_orb ~ ~ ~

scoreboard players set in stellarity.misc 2
scoreboard players set in1 stellarity.misc 9
function stellarity:utils/rng/range

execute store result entity @e[type=experience_orb,limit=1,sort=nearest] Value short 1 run scoreboard players get out stellarity.misc
