data modify storage stellarity:temp aota.item set from entity @n[type=item,tag=stellarity.aota.minecraft.netherite_helmet,distance=..1.5] Item.components

data modify storage stellarity:temp aota.enchants set from storage stellarity:temp aota.item."minecraft:enchantments"
data modify storage stellarity:temp aota.trim set from storage stellarity:temp aota.item."minecraft:trim"

loot spawn ~ ~-.4 ~ loot stellarity:items/armor/hallowed/helmet

data modify entity @n[type=item,tag=!stellarity.aota.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp aota.enchants
data modify entity @n[type=item,tag=!stellarity.aota.checked_type] Item.components."minecraft:trim" set from storage stellarity:temp aota.trim

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_of_accursed/crafting/global_effects

