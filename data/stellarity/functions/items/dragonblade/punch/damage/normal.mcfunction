scoreboard players set #mul stellarity.misc 15
scoreboard players operation #enchant stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage kohara.misc 70
scoreboard players operation #damage kohara.misc += #enchant stellarity.misc

tag @p[predicate=stellarity:items/holding/dragonblade,predicate=kohara:player/is_sneaking] add kohara.attacker

effect give @s slowness 1 6 true
effect give @s weakness 7 0 false

function kohara:damage/calculate {armor_penetration:70,damage_boost_efficiency:40,damage_type:"stellarity:dragonblade",tag:"stellarity.damage.dragonblade"}
