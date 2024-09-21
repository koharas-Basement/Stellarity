execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/snow

scoreboard players set #damage kohara.misc 50

effect give @s slowness 6 0 false

scoreboard players set #dot.damage stellarity.misc 15
scoreboard players set #dot.delay stellarity.misc 20

execute if predicate kohara:chance/66percent run function stellarity:utils/status_effects/frostburn/apply

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add kohara.attacker

function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}
