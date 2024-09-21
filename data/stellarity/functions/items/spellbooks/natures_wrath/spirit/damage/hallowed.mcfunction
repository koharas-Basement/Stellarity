execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/hallowed

scoreboard players set #damage kohara.misc 80
execute if entity @s[type=#kohara:undead] run scoreboard players set #damage kohara.misc 120

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add kohara.attacker

function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}
