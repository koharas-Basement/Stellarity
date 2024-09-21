summon marker ~ ~ ~ {Tags:["stellarity.carcanet.star","stellarity.marker"],Rotation:[0f,90f]}
execute as @e[type=marker,tag=stellarity.carcanet.star,limit=1,sort=nearest] at @s facing entity @p[distance=..20,predicate=stellarity:items/holding/trinkets/starstruck_carcanet] eyes run tp @s ~ ~ ~ ~ ~
