execute as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] run \
	data modify entity @s Glowing set value 1b

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing] \
	on passengers run \
	data modify entity @s Glowing set value 1b

tag @s add stellarity.eol.glowing

execute if predicate stellarity:mobs/eol/is_daytime run function stellarity:mobs/eol/core/glowing/join_team/day
execute unless predicate stellarity:mobs/eol/is_daytime run function stellarity:mobs/eol/core/glowing/join_team/night
