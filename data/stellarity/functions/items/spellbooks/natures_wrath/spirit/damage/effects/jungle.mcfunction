execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/jungle

scoreboard players set #damage kohara.misc 60

execute if score #upgr stellarity.misc matches 0 run effect give @s poison 8 0 false
execute if score #upgr stellarity.misc matches 1 run effect give @s poison 6 1 false
execute if score #upgr stellarity.misc matches 2 run effect give @s poison 4 2 false

tag @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] add kohara.attacker

function kohara:damage/calculate {armor_penetration:30,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}
