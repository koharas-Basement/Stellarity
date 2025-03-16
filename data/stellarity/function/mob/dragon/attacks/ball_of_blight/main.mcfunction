# Ticked directly from marker loop

execute facing entity @p feet anchored eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.15 ~ ~

damage @p[distance=..1.5] 10 mob_attack by @n[type=ender_dragon]

# Debug
#particle block_marker{block_state: 'minecraft:barrier'} ~ ~ ~ 0 0 0 0 1 force

particle minecraft:dust_color_transition{from_color: [1.0, 0.0, 0.918], scale: 3.0, to_color: [0.294, 0.0, 0.267]} ~ ~ ~ 0.5 0.5 0.5 1 3 force @a[distance=..128]
particle dragon_breath ~ ~ ~ 0.75 0.75 0.75 .03 1 force @a[distance=..128]
particle end_rod ~ ~ ~ 0.15 0.15 0.15 0.01 3 force @a[distance=..128]

scoreboard players add @s stellarity.misc 1
kill @s[scores={stellarity.misc=300..}]
