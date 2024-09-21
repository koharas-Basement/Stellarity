scoreboard players operation @s stellarity.status_effects.jinx.time = #effect.duration stellarity.misc
scoreboard players operation @s stellarity.status_effects.jinx.level = #effect.level stellarity.misc

execute store result storage stellarity:temp status_effects.jinx.luck int 1 run scoreboard players get #effect.level stellarity.misc
execute store result storage stellarity:temp status_effects.jinx.armor float 0.25 run scoreboard players get #effect.level stellarity.misc

function stellarity:utils/status_effects/jinx/attributes with storage stellarity:temp status_effects.jinx

playsound minecraft:entity.elder_guardian.curse neutral @s[tag=!stellarity.jinxed] ~ ~ ~ 0.4 1.2
playsound minecraft:item.armor.equip_netherite neutral @s[tag=!stellarity.jinxed] ~ ~ ~ 0.8 0

tag @s add kohara.status_effect.tick
tag @s add stellarity.jinxed
