scoreboard players add @s stellarity.status_effects.jinx.particle 1
scoreboard players remove @s stellarity.status_effects.jinx.time 1

execute if score @s stellarity.status_effects.jinx.particle matches 4 run function stellarity:utils/status_effects/jinx/particle

execute if score @s stellarity.status_effects.jinx.time matches 0 run function stellarity:utils/status_effects/jinx/remove
