scoreboard players add @s stellarity.dot.leeching.progress 1

execute if score @s stellarity.dot.leeching.progress = @s stellarity.dot.leeching.delay run function stellarity:utils/status_effects/leeching/heal

scoreboard players remove @s stellarity.dot.leeching.time 1

execute anchored eyes rotated ~ 0 run particle dust_color_transition 1 0.918 0 1.5 0.294 0.165 0.376 ^ ^-0.5 ^ .17 .17 .17 0 1 normal @a

execute if score @s stellarity.dot.leeching.time matches 0 run function stellarity:utils/status_effects/leeching/timeout
