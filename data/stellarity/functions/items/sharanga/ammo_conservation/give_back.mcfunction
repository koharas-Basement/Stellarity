execute store result score #infinity stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:infinity"}].lvl 1

execute if score #infinity stellarity.misc matches 0 if predicate kohara:chance/25percent run give @s spectral_arrow 1
execute unless score #infinity stellarity.misc matches 0 if predicate kohara:chance/50percent run give @s spectral_arrow 1

tag @s remove stellarity.items.sharanga.scheduled
