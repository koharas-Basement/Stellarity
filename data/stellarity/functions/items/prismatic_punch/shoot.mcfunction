advancement revoke @s only stellarity:events/items/shoot_prismatic_punch

execute as @e[type=#kohara:ammo,limit=1,sort=nearest,tag=!stellarity.aware] positioned as @s run function stellarity:items/prismatic_punch/spawn_blast

data modify storage stellarity:temp prismatic_punch.item set from entity @s SelectedItem
execute store result score @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] stellarity.items.prismatic_punch.piercing run \
	data get storage stellarity:temp prismatic_punch.item.tag.Enchantments.[{id:"minecraft:piercing"}].lvl 1
execute if data storage stellarity:temp prismatic_punch.item.tag.Enchantments.[{id:"minecraft:multishot"}] run \
	tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] add stellarity.prismatic_blast.multishot
	
playsound minecraft:block.enchantment_table.use player @a[distance=0..] ~ ~ ~ .75 1.25
playsound minecraft:entity.blaze.shoot player @a[distance=0..] ~ ~ ~ 1 1.35
