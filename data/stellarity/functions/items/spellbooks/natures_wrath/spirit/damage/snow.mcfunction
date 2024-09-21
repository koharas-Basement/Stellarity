execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/snow

scoreboard players set #damage stellarity.misc 40

scoreboard players set #armor_penetration stellarity.misc 0
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #ignore_resistance stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 2
scoreboard players set #damage_effects stellarity.misc 4

tag @s add stellarity.damage.natures_wrath

effect give @s slowness 6 0 false
effect give @s weakness 3 0 false

scoreboard players set #dot.damage stellarity.misc 15
scoreboard players set #dot.delay stellarity.misc 20

execute if predicate stellarity:utils/chance/66percent run function stellarity:utils/dot/frostburn/apply

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add stellarity.damage.attacker

function stellarity:utils/damage/start
