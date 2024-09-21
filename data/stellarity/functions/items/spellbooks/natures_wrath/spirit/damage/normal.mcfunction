execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/normal

execute if score #upgr stellarity.misc matches 0 run scoreboard players set #damage kohara.misc 40
execute if score #upgr stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 50
execute if score #upgr stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 60

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add kohara.attacker

function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}
