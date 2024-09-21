execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/jungle

scoreboard players set #damage stellarity.misc 70

scoreboard players set #armor_penetration stellarity.misc 10
scoreboard players set #ignore_iframes stellarity.misc 1

execute if score #upgr stellarity.misc matches 0 run effect give @s poison 11 0 false
execute if score #upgr stellarity.misc matches 1 run effect give @s poison 7 1 false
execute if score #upgr stellarity.misc matches 2 run effect give @s poison 5 2 false

tag @s add stellarity.damage.natures_wrath

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add stellarity.damage.attacker

function stellarity:utils/damage/start
