advancement revoke @s only stellarity:events/items/attack/starless_scythe

execute store result score #enchant stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:efficiency"}].lvl 2
execute as @e[type=!#kohara:invalid_targets,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run function stellarity:items/starless_scythe/inflict_dot
