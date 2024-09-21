kill @e[type=item,tag=stellarity.aota.iron_ingot,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.popped_chorus_fruit,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/materials/chorus_plating
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
