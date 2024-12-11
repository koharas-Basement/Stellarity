data modify storage stellarity:temp aota.enchants set from entity @n[type=item,tag=stellarity.aota.netherite_axe,distance=..1.5] Item.components."minecraft:enchantments"

loot spawn ~ ~-.4 ~ loot stellarity:items/tools/shulker/axe

data modify entity @n[type=item,tag=!stellarity.aota.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp aota.enchants

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_of_accursed/crafting/global_effects

data remove storage stellarity:temp aota.enchants
