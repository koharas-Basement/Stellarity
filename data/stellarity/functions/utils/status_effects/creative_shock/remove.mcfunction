scoreboard players reset @s stellarity.status_effects.creative_shock.time

gamemode survival @s[gamemode=adventure]
effect clear @s mining_fatigue

tag @s remove stellarity.creative_shock

function kohara:status_effect/stop_ticking
