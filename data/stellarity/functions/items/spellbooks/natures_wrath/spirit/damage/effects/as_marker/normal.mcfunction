particle soul_fire_flame ~ ~ ~ 0 0 0 0.04 6 normal

execute unless score @s stellarity.misc2 matches 5.. run scoreboard players set #upgr stellarity.misc 0
execute if score @s stellarity.misc2 matches 5..7 run scoreboard players set #upgr stellarity.misc 1
execute if score @s stellarity.misc2 matches 8.. run scoreboard players set #upgr stellarity.misc 2

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all
