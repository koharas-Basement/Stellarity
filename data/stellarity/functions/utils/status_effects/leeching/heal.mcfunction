execute as @p[predicate=stellarity:items/holding_starless_scythe,distance=0.01..] at @s run function stellarity:utils/status_effects/leeching/as_player

scoreboard players add @s stellarity.dot.leeching.damage 10

scoreboard players reset @s stellarity.dot.leeching.progress
