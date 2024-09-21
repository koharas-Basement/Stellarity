execute store result score #damage kohara.misc run attribute @p[predicate=stellarity:items/holding/prismember] generic.attack_damage get 10

tag @p[predicate=stellarity:items/holding/prismember,distance=0.001..] add kohara.attacker

function kohara:damage/calculate {armor_penetration:30,damage_boost_efficiency:0,damage_type:"stellarity:prismember",tag:"stellarity.damage.prismember"}

# Prismatic Inferno
scoreboard players set #dot.time stellarity.misc 60

scoreboard players operation #dot.time stellarity.misc += #enchant stellarity.misc

function stellarity:utils/status_effects/prismatic_inferno/apply
