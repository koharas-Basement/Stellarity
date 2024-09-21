execute unless score @s stellarity.misc matches 4.. run tp @s ^ ^ ^0.7 ~ ~
execute if score @s stellarity.misc matches 4.. facing entity @p eyes positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.7 ~ ~

particle firework ~ ~ ~ 0 0 0 .024 1 force
particle electric_spark ~ ~ ~ 0 0 0 .24 3 force

execute if score @s stellarity.misc matches 4.. positioned ~ ~-1 ~ if entity @a[distance=..1] positioned ~ ~1 ~ run function stellarity:items/sariel/orb_heal

# Age
scoreboard players add @s stellarity.misc 1
