execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/sculk

scoreboard players set #damage stellarity.misc 110

scoreboard players set #armor_penetration stellarity.misc 15
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #ignore_resistance stellarity.misc 0


tag @s add stellarity.damage.natures_wrath

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add stellarity.damage.attacker

function stellarity:utils/damage/start

# Splash damage
scoreboard players set #damage stellarity.misc 90

scoreboard players set #armor_penetration stellarity.misc 15
scoreboard players set #ignore_iframes stellarity.misc 1

execute at @s run tag @e[type=!#stellarity:invalid_targets,distance=0.01..2.11] add stellarity.damage.natures_wrath

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add stellarity.damage.attacker

execute at @s as @e[type=!#stellarity:invalid_targets,distance=0.01..2.11] run function stellarity:utils/damage/start
