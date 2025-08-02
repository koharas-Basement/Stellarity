$data modify storage stellarity:temp altar_of_the_accursed.item set from entity @n[type=item,tag=stellarity.altar_of_the_accursed.$(parent),distance=..1.5] Item.components

data modify storage stellarity:temp altar_of_the_accursed.enchants set from storage stellarity:temp altar_of_the_accursed.item."minecraft:enchantments"
data modify storage stellarity:temp altar_of_the_accursed.trim set from storage stellarity:temp altar_of_the_accursed.item."minecraft:trim"

$loot spawn ~ ~-.4 ~ loot $(loot)

data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.trim

function stellarity:mechanic/altar_of_the_accursed/crafting/global_effects
