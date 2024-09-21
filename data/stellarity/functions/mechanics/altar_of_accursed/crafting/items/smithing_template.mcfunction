kill @e[type=item,tag=stellarity.aota.5_enderite_shards,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.9_purpur_blocks,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/materials/enderite_smithing_template
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
