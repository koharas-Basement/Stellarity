data merge entity @s {Rotation:[0f,90f]}
execute at @s facing entity @p[distance=..20,predicate=stellarity:item/holding/trinket/starstruck_shield] eyes run tp @s ~ ~ ~ ~ ~-3

tag @s add stellarity.starstruck_shield.star
tag @s add stellarity.marker

playsound stellarity:item.starstruck_shield.spawn_star player @a ~ ~ ~ 2.2 1

particle minecraft:cloud ~ ~.1 ~ 0 0 0 0.05 10
