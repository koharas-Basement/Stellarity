scoreboard players operation @s stellarity.status_effects.creative_shock.time = #effect.duration stellarity.misc

#effect give @s mining_fatigue infinite 3 true
# Removes attack speed reduction of Mining Fatigue
#attribute @s minecraft:generic.attack_speed modifier remove 55FCED67-E92A-486E-9800-B47F202C4386

playsound minecraft:entity.elder_guardian.curse player @s[tag=!stellarity.creative_shock] ~ ~ ~ 1 0.9
particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force @s[tag=!stellarity.creative_shock]

tag @s add kohara.status_effect.tick
tag @s add stellarity.creative_shock
