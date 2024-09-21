kill @e[type=#kohara:ammo,limit=3,sort=nearest,tag=!stellarity.aware]

execute store result score #extra_damage stellarity.misc run \
	data get storage stellarity:temp slayer_crossbow.item.tag.Enchantments.[{id:"minecraft:piercing"}].lvl 20
execute if data storage stellarity:temp slayer_crossbow.item.tag.Enchantments.[{id:"minecraft:multishot"}] run \
	tag @s add stellarity.multishot

function stellarity:items/slayer_crossbow/ray/start

kill @s
