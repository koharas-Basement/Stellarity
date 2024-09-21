# Keeping it as a separate function in case I ever
# want to do something else with that.
# Idk, increase damage by X% or similair stuff.
execute store result score #damage kohara.misc run attribute @s generic.attack_damage get 10
execute store result score #enchant stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 20
