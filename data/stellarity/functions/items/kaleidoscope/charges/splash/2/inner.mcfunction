scoreboard players set #damage stellarity.misc 130
scoreboard players operation #damage stellarity.misc += #charge stellarity.misc
scoreboard players set #100 stellarity.misc 100

# 70% of discharge damage
scoreboard players operation #temp stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc

scoreboard players set #temp2 stellarity.misc 30
scoreboard players operation #temp2 stellarity.misc *= #damage stellarity.misc

scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc

scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #damage stellarity.misc = #temp stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 20
scoreboard players set #ignore_iframes stellarity.misc 1

tag @s add stellarity.damage.kaleidoscope

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

function stellarity:utils/damage/start
