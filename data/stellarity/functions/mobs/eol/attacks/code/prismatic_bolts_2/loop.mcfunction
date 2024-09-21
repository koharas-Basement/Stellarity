scoreboard players add @s stellarity.eol.projectile_age 1

execute if score @s stellarity.eol.projectile_age matches 0..15 run tp ^ ^ ^.22

execute if score @s stellarity.eol.projectile_age matches 16..22 facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.6 ~ ~
execute if score @s stellarity.eol.projectile_age matches 23..34 facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^6 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.6 ~ ~
execute if score @s stellarity.eol.projectile_age matches 35..56 facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^8 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.6 ~ ~
execute if score @s stellarity.eol.projectile_age matches 57.. run tp @s ^ ^ ^0.6 ~ ~

execute if entity @s[tag=stellarity.eol.prismatic_bolt.red] run particle dust 0.98 0.243 0.243 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.orange] run particle dust 0.98 0.686 0.243 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.yellow] run particle dust 0.98 0.871 0.243 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.lime] run particle dust 0.6 0.98 0.243 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.aqua] run particle dust 0.243 0.894 0.98 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.blue] run particle dust 0.318 0.243 0.98 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.magenta] run particle dust 0.98 0.243 0.918 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.purple] run particle dust 0.647 0.243 0.98 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force
execute if entity @s[tag=stellarity.eol.prismatic_bolt.gold] run particle dust 1 0.816 0 1.5 ^ ^ ^ 0.13 0.13 0.13 0 3 force

execute positioned ^ ^-.5 ^ as @a[distance=..1.2,nbt={HurtTime:0s}] at @s run function stellarity:mobs/eol/attacks/code/prismatic_bolts/damage

execute if score @s stellarity.eol.projectile_age matches 75.. run kill @s
