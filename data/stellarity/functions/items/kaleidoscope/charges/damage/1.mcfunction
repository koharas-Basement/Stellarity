scoreboard players set #damage stellarity.misc 20
scoreboard players operation #damage stellarity.misc += #charge stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 20
scoreboard players set #ignore_iframes stellarity.misc 1

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

function stellarity:utils/damage/start
