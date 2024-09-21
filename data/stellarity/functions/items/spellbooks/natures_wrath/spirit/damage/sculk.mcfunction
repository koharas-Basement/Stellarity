execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/sculk

scoreboard players set #damage kohara.misc 110

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add kohara.attacker

function kohara:damage/calculate {armor_penetration:25,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}

# Splash damage
scoreboard players set #damage kohara.misc 70

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add kohara.attacker

execute at @s as @e[type=!#kohara:invalid_targets,distance=0.001..2.11] run function kohara:damage/calculate {armor_penetration:25,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}

