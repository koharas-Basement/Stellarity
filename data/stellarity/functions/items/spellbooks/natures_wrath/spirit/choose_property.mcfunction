execute rotated as @p run tp @s ^ ^ ^ ~ ~
tag @s add stellarity.natures_wrath.spirit

scoreboard players operation @s stellarity.misc2 = #upgrades stellarity.misc

data remove storage stellarity:temp "natures_wrath.spells"
data remove storage stellarity:temp "natures_wrath.chosen"

execute unless score #upgrades stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.chosen" set value "normal"
execute if score #upgrades stellarity.misc matches 1..6 if predicate stellarity:utils/chance/50percent run data modify storage stellarity:temp "natures_wrath.chosen" set value "normal"
execute if score #upgrades stellarity.misc matches 7.. if predicate stellarity:utils/chance/33percent run data modify storage stellarity:temp "natures_wrath.chosen" set value "normal"
execute if data storage stellarity:temp {natures_wrath.chosen:"normal"} run tag @s add stellarity.natures_wrath.spirit.normal

execute unless data storage stellarity:temp {natures_wrath.chosen:"normal"} run function stellarity:items/spellbooks/natures_wrath/spirit/if_not_default
