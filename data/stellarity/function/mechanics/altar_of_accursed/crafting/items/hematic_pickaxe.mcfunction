data modify storage stellarity:temp aota.item set from entity @e[type=item,tag=stellarity.aota.netherite_pickaxe,distance=..1.5,limit=1] Item.components
data modify storage stellarity:temp aota.enchants set from storage stellarity:temp aota.item."minecraft:enchantments"

kill @e[type=item,tag=stellarity.aota.enderite_smithing_template,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.living_flesh,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.netherite_pickaxe,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/tools/hematic_pickaxe
tag @n[type=item] add stellarity.aota.skip

data modify entity @n[type=item] Item.components."minecraft:enchantments" set from storage stellarity:temp aota.enchants

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
