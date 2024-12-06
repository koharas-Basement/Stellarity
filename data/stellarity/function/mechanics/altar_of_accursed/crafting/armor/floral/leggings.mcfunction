data modify storage stellarity:temp aota.item set from entity @e[type=item,tag=stellarity.aota.netherite_leggings,distance=..1.5,limit=1] Item.components

data modify storage stellarity:temp aota.enchants set from storage stellarity:temp aota.item."minecraft:enchantments"
data modify storage stellarity:temp aota.trim set from storage stellarity:temp aota.item."minecraft:trim"

kill @e[type=item,tag=stellarity.aota.8_cherry_leaves,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.netherite_leggings,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.enderite_smithing_template,distance=..1.5,limit=1]

loot spawn ~ ~-.4 ~ loot stellarity:items/armor/floral/leggings
tag @n[type=item] add stellarity.aota.skip

data modify entity @n[type=item] Item.components."minecraft:enchantments" set from storage stellarity:temp aota.enchants
data modify entity @n[type=item] Item.components."minecraft:trim" set from storage stellarity:temp aota.trim

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_of_accursed/crafting/global_effects

