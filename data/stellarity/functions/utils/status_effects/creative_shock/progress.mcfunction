scoreboard players remove @s stellarity.status_effects.creative_shock.time 1

particle minecraft:witch ~ ~1.2 ~ 0.25 0.5 0.25 0.02 1

gamemode adventure @s[gamemode=survival]

execute if score @s stellarity.status_effects.creative_shock.time matches 0 run function stellarity:utils/status_effects/creative_shock/remove
