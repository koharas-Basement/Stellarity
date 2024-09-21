scoreboard players add @s stellarity.dot.dark_decay.progress 1

execute if score @s stellarity.dot.dark_decay.progress = @s stellarity.dot.dark_decay.delay run function stellarity:utils/status_effects/dark_decay/damage

scoreboard players remove @s stellarity.dot.dark_decay.time 1

particle dust_color_transition 1 1 1 1.5 0.125 0.125 0.125 ~ ~1 ~ .3 .5 .3 0 2 normal

execute if score @s stellarity.dot.dark_decay.time matches 0 run function stellarity:utils/status_effects/dark_decay/remove
