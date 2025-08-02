execute store result score #damage kohara.misc run attribute @p[predicate=stellarity:item/holding/prismember] attack_damage get 10

tag @p[predicate=stellarity:item/holding/prismember,distance=0.001..] add kohara.attacker

function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:prismember",tag:"stellarity.damage.prismember"}

# Prismatic Inferno
scoreboard players set #effect.duration stellarity.misc 120

function stellarity:util/status_effects/prismatic_inferno/apply
