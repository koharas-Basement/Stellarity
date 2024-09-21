scoreboard players remove @s stellarity.items.prismatic_pearl.cooldown 2
execute if score @s stellarity.items.prismatic_pearl.cooldown matches 1..2 at @s run function stellarity:items/prismatic_pearl/cooldown/give_back
