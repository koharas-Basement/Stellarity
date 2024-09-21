data modify storage stellarity:temp "natures_wrath.spells" append value "sculk"

execute store result score #mob_count stellarity.misc if entity @e[type=!#kohara:invalid_targets_with_player,distance=..9]
execute if score #mob_count stellarity.misc matches 5.. run data modify storage stellarity:temp "natures_wrath.spells" append value "sculk"
execute if score #mob_count stellarity.misc matches 5.. run data modify storage stellarity:temp "natures_wrath.spells" append value "sculk"
