summon marker ~ ~ ~ {Tags:["foka.hallowed_armor_as"]}
tp @e[type=marker,limit=1,sort=nearest,tag=foka.hallowed_armor_as] @p
execute at @s positioned ~ ~4 ~ run tp @e[type=marker,limit=1,sort=nearest,tag=foka.hallowed_armor_as] ~ ~ ~ ~ 0
execute as @e[type=marker,limit=1,sort=nearest,tag=foka.hallowed_armor_as] at @s run function fokastudio:end/items/armors/hallowed_armor/dodge_visual
