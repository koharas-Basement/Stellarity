scoreboard players set #mul stellarity.misc 40
scoreboard players operation #enchant stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage kohara.misc 240
scoreboard players operation #damage kohara.misc += #enchant stellarity.misc

tag @p[predicate=stellarity:items/holding_dragonblade,predicate=kohara:player/is_sneaking] add kohara.attacker

execute if score #damage kohara.misc matches 320.. run advancement grant @p[predicate=stellarity:items/holding_dragonblade,predicate=kohara:player/is_sneaking] only stellarity:aota/kaliyah

effect give @s slowness 2 6 true
effect give @s weakness 11 0 false

function kohara:damage/calculate {armor_penetration:70,damage_boost_efficiency:40,damage_type:"stellarity:dragonblade",tag:"stellarity.damage.dragonblade"}
