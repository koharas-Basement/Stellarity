data modify storage stellarity:temp aota.item set from entity @n[type=item,tag=stellarity.aota.netherite_pickaxe,distance=..1.5] Item.components
data modify storage stellarity:temp aota.enchants set from storage stellarity:temp aota.item."minecraft:enchantments"

loot spawn ~ ~.1 ~ loot stellarity:items/tools/hematic_pickaxe

data modify entity @n[type=item,tag=!stellarity.aota.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp aota.enchants

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
