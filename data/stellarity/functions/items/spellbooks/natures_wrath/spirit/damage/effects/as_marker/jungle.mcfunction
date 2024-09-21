particle block bamboo ~ ~ ~ 0 0 0 1 15 normal

execute unless score @s stellarity.misc2 matches 4.. run scoreboard players set #upgr stellarity.misc 0
execute if score @s stellarity.misc2 matches 4..6 run scoreboard players set #upgr stellarity.misc 1
execute if score @s stellarity.misc2 matches 7.. run scoreboard players set #upgr stellarity.misc 2

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all
