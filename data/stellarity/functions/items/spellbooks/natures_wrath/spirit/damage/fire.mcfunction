execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/fire

scoreboard players set #damage stellarity.misc 50

scoreboard players set #armor_penetration stellarity.misc 0
scoreboard players set #ignore_iframes stellarity.misc 1

execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

tag @s add stellarity.damage.natures_wrath

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add stellarity.damage.attacker

function stellarity:utils/damage/start

