scoreboard players set #damage stellarity.misc 10
scoreboard players set #armor_penetration stellarity.misc 100

scoreboard players set #ignore_iframes stellarity.misc 1

tag @s add stellarity.damage.tamaris_execute
tag @p[predicate=stellarity:items/holding_tamaris] add stellarity.damage.attacker

function stellarity:utils/damage/start
