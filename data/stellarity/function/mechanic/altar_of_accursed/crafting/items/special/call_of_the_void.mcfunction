data modify storage stellarity:temp aota.item set from entity @n[type=item,tag=stellarity.aota.bow,distance=..1.5] Item.components
data modify storage stellarity:temp aota.enchants set from storage stellarity:temp aota.item."minecraft:enchantments"

loot spawn ~ ~.1 ~ loot stellarity:item/weapon/call_of_the_void

data modify storage stellarity:temp aota.enchants.levels."stellarity:void_shot" set value 1

data modify entity @n[type=item,tag=!stellarity.aota.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp aota.enchants

function stellarity:mechanic/altar_of_accursed/crafting/global_effects
