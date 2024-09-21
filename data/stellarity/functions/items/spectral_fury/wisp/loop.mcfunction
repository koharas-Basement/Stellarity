scoreboard players add @s stellarity.misc 1

particle end_rod ^ ^ ^ 0.06 0.06 0.06 0.01 2 force @a[distance=..128]
particle minecraft:dust 0.749 0.929 1 1 ^ ^ ^ 0.08 0.08 0.08 1 2 force @a[distance=..128]

scoreboard players set #homing stellarity.misc 0
execute if entity @e[type=!#kohara:invalid_targets_with_player,distance=..16] run scoreboard players set #homing stellarity.misc 1
execute if score #homing stellarity.misc matches 0 run tp @s ^ ^ ^0.65 ~ ~
execute if score #homing stellarity.misc matches 1 \
	anchored eyes facing entity @e[type=!#kohara:invalid_targets_with_player,distance=..16,limit=1,sort=nearest,tag=!stellarity.spectral_fury.untargettable] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.65 ~ ~

execute store result storage stellarity:temp spectral_fury.damage float 0.01 run scoreboard players get @s stellarity.items.spectral_fury.damage

execute as @e[type=!#kohara:invalid_targets_with_player,dx=0,nbt=!{HurtTime:10s}] at @s run \
	function stellarity:items/spectral_fury/wisp/damage with storage stellarity:temp spectral_fury

# Player damage
execute as @a[predicate=!stellarity:items/holding/spectral_fury,dx=0,nbt=!{HurtTime:10s}] at @s run \
	function stellarity:items/spectral_fury/wisp/damage with storage stellarity:temp spectral_fury

execute unless block ~ ~ ~ #kohara:non_solid run function stellarity:items/spectral_fury/wisp/remove
execute if score @s stellarity.misc matches 140 run function stellarity:items/spectral_fury/wisp/remove
