scoreboard players set #damage kohara.misc 90
scoreboard players operation #damage kohara.misc += #extra_damage stellarity.misc

tag @p[predicate=stellarity:items/holding/slayer_crossbow] add kohara.attacker

function kohara:damage/calculate {armor_penetration:15,damage_boost_efficiency:0,damage_type:"minecraft:arrow",tag:"stellarity.damage.slayer_crossbow"}

tag @s add laser
