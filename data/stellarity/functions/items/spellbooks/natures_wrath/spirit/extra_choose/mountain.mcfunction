data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"

execute store result score #mob_count stellarity.misc if entity @e[type=!#stellarity:invalid_targets_with_player,distance=13..23]
execute if entity @e[type=!#stellarity:invalid_targets_with_player,distance=..13] run scoreboard players set #mob_count stellarity.misc 0

execute if score #mob_count stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"
execute if score #mob_count stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"
execute if score #mob_count stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"
