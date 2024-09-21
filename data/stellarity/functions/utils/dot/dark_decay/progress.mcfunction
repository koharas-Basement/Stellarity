scoreboard players add @s stellarity.dot.dark_decay.progress 1

execute if score @s stellarity.dot.dark_decay.progress = @s stellarity.dot.dark_decay.delay run function stellarity:utils/dot/dark_decay/damage

scoreboard players remove @s stellarity.dot.dark_decay.time 1

execute if score @s stellarity.dot.dark_decay.time matches 0 run function stellarity:utils/dot/dark_decay/remove
