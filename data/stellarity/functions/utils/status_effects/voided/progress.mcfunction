scoreboard players add @s stellarity.status_effects.voided.particle 1
scoreboard players remove @s stellarity.status_effects.voided.time 1

execute if score @s stellarity.status_effects.voided.particle matches 2 run function stellarity:utils/status_effects/voided/particle

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.voided"],effects:[{id:"minecraft:wither",amplifier:0,duration:2,show_icon:0b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

execute if score @s stellarity.status_effects.voided.time matches 0 run function stellarity:utils/status_effects/voided/remove
