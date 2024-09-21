scoreboard players add @s stellarity.eol.attack_duration 1

execute if score @s stellarity.eol.attack_duration matches 1 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score @s stellarity.eol.attack_duration matches 1..5 run tp @s ^ ^-0.865 ^-0.6 ~ ~
execute if score @s stellarity.eol.attack_duration matches 6 rotated as @s run tp @s ^ ^-0.5 ^ ~ 0
execute if score @s stellarity.eol.attack_duration matches 7.. run function stellarity:mobs/eol/attacks/code/dash/move

execute if score @s stellarity.eol.attack_duration matches 15.. unless block ^ ^ ^1.5 #stellarity:non_solid run function stellarity:mobs/eol/attacks/code/dash/found_block

execute if score @s stellarity.eol.attack_duration matches 22.. run tag @s remove stellarity.eol.dash
execute if score @s stellarity.eol.attack_duration matches 22.. run tag @s remove stellarity.eol.no_rotate
