summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.marker"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] ^ ^ ^ ~ ~
function stellarity:items/prismatic_punch/shoot_particles


execute store result score @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] stellarity.items.prismatic_punch.piercing run \
	data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:piercing"}].lvl 1
execute if data entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:multishot"}] run \
	tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] add stellarity.prismatic_blast.multishot
