# Age
scoreboard players add @s stellarity.misc 1

tp @s ^ ^ ^0.7

execute anchored eyes rotated as @p positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute unless block ^ ^ ^1 #kohara:non_solid run function stellarity:items/spellbooks/conveyance/hit_block

particle dragon_breath ^ ^ ^ .14 .14 .14 0.00106 2 force @a[distance=..64]
particle dust_color_transition 0.898 0.122 1 1.3 0.435 0 1 ^ ^ ^ .1 .1 .1 0 3 force @a[distance=..64]

execute if score @s stellarity.misc matches 60.. run kill @s
