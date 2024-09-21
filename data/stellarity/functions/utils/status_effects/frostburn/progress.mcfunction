scoreboard players add @s stellarity.dot.frostburn.progress 1

execute if score @s stellarity.dot.frostburn.progress matches 20 run function stellarity:utils/status_effects/frostburn/damage

scoreboard players remove @s stellarity.dot.frostburn.time 1

particle soul_fire_flame ~ ~1 ~ .4 .5 .4 0 1 force @a[distance=..32]

execute if score @s stellarity.dot.frostburn.time matches 0 run function stellarity:utils/status_effects/frostburn/remove
