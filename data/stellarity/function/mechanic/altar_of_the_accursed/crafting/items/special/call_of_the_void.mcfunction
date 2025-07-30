data modify storage stellarity:temp altar_of_the_accursed.item set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.bow,distance=..1.5] Item.components
data modify storage stellarity:temp altar_of_the_accursed.enchants set from storage stellarity:temp altar_of_the_accursed.item."minecraft:enchantments"

loot spawn ~ ~.1 ~ loot stellarity:item/weapon/call_of_the_void

data modify storage stellarity:temp altar_of_the_accursed.enchants.levels."stellarity:void_shot" set value 1

data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants

function stellarity:mechanic/altar_of_the_accursed/crafting/global_effects
