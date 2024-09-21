scoreboard players set #mul stellarity.misc 15
scoreboard players operation #enchant_splash stellarity.misc = #enchant stellarity.misc
scoreboard players operation #enchant_splash stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage kohara.misc 40
scoreboard players operation #damage kohara.misc += #enchant_splash stellarity.misc

tag @p[predicate=stellarity:items/holding_dragonblade,predicate=kohara:player/is_sneaking] add kohara.attacker

effect give @s weakness 3 0 false

function kohara:damage/calculate {armor_penetration:70,damage_boost_efficiency:40,damage_type:"stellarity:dragonblade",tag:"stellarity.damage.dragonblade"}
