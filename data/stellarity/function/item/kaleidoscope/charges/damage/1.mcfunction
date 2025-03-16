execute store result score #temp stellarity.misc run data get entity @s Fire

scoreboard players set #2 stellarity.misc 2
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc *= #2 stellarity.misc
execute if score #temp stellarity.misc matches ..120 store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

scoreboard players set #damage kohara.misc 30
scoreboard players operation #damage kohara.misc += #charge stellarity.misc

tag @p[predicate=stellarity:item/holding/kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:15,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
