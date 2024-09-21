scoreboard players set #fire stellarity.misc 77
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

# Base discharge damage: 23
scoreboard players set #damage kohara.misc 161

tag @p[predicate=stellarity:items/holding_kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:35,damage_boost_efficiency:50,damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
