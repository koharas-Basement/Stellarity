scoreboard players reset @s stellarity.status_effects.voided.time
scoreboard players reset @s stellarity.status_effects.voided.level
scoreboard players reset @s stellarity.status_effects.voided.particle

attribute @s generic.max_health modifier remove 52d4668c-fa7d-4c2e-897c-4e4f1fd48e23

playsound stellarity:effect.voided.deactivate player @a ~ ~ ~ 0.75 1

function kohara:dot/stop_ticking
