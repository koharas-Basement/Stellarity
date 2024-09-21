scoreboard players operation #damage kohara.misc = @s stellarity.dot.leeching.damage

scoreboard players reset @s stellarity.dot.leeching.damage

execute anchored eyes rotated ~ 0 run particle firework ^ ^-0.5 ^ 0 0 0 0.08 17 force @a[distance=..32]

playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 0
playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:item.trident.return player @a[distance=0..] ~ ~ ~ 1 0.7

tag @p add kohara.attacker

function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:0,damage_type:"stellarity:dot/leeching",tag:"stellarity.damage.dot.leeching"}
