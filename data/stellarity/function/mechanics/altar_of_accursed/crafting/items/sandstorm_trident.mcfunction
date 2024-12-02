data modify storage stellarity:temp aota.item set from entity @e[type=item,tag=stellarity.aota.trident,distance=..1.5,limit=1] Item.components

kill @n[type=item,tag=stellarity.aota.enderite_smithing_template,distance=..1.5]
kill @n[type=item,tag=stellarity.aota.trident,distance=..1.5]
kill @n[type=item,tag=stellarity.aota.2_breeze_rods,distance=..1.5]
kill @n[type=item,tag=stellarity.aota.sand_rune,distance=..1.5]

loot spawn ~ ~.1 ~ loot stellarity:items/sandstorm_trident
tag @n[type=item] add stellarity.aota.skip

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
