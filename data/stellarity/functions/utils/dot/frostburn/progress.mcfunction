scoreboard players add @s stellarity.dot.frostburn.progress 1

execute if score @s stellarity.dot.frostburn.progress = @s stellarity.dot.frostburn.delay run function stellarity:utils/dot/frostburn/damage

scoreboard players remove @s stellarity.dot.frostburn.time 1

execute if score @s stellarity.dot.frostburn.time matches 0 run function stellarity:utils/dot/frostburn/remove
