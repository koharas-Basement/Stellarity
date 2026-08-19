loot spawn ~ ~.1 ~ loot stellarity:item/trinket/void_pendant

$data merge entity @n[type=item] {Item:{components:{"minecraft:lore":$(lore),"minecraft:enchantments":{"stellarity:_technical/void_pendant/$(enchant)":1}}}}

function stellarity:mechanic/altar_of_the_accursed/crafting/global_effects