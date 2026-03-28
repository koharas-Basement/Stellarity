loot spawn ~ ~.1 ~ loot stellarity:item/trinket/void_locket

$data merge entity @n[type=item] {Item:{components:{"minecraft:enchantments":{"stellarity:_technical/void_locket/$(enchant)":1}}}}

function stellarity:mechanic/altar_of_the_accursed/crafting/global_effects