execute as @n[type=armor_stand,tag=stellarity.eol.as] run \
data modify entity @s Glowing set value 1b

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing] \
on passengers run \
data modify entity @s Glowing set value 1b

tag @s add stellarity.eol.glowing

execute if predicate stellarity:entity/eol/is_daytime run function stellarity:entity/eol/core/glowing/join_team/day
execute unless predicate stellarity:entity/eol/is_daytime run function stellarity:entity/eol/core/glowing/join_team/night
