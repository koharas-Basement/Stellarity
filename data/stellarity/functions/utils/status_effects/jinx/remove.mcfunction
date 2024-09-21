scoreboard players reset @s stellarity.status_effects.jinx.time
scoreboard players reset @s stellarity.status_effects.jinx.level
scoreboard players reset @s stellarity.status_effects.jinx.particle

attribute @s generic.armor modifier remove 05478580-dac6-4d50-b0bf-1df6d1363c4c
attribute @s generic.armor_toughness modifier remove 05478580-dac6-4d50-b0bf-1df6d1363c4c
attribute @s generic.knockback_resistance modifier remove 05478580-dac6-4d50-b0bf-1df6d1363c4c
attribute @s generic.luck modifier remove 05478580-dac6-4d50-b0bf-1df6d1363c4c

function kohara:status_effect/stop_ticking

tag @s remove stellarity.jinxed
