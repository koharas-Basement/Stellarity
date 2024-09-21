scoreboard players set #2 stellarity.misc 2
scoreboard players set #2s stellarity.misc 40
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
scoreboard players operation #fire stellarity.misc += #2s stellarity.misc
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

scoreboard players set #damage kohara.misc 40
scoreboard players operation #damage kohara.misc += #charge stellarity.misc

tag @p[predicate=stellarity:items/holding_kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:25,damage_boost_efficiency:50,damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
