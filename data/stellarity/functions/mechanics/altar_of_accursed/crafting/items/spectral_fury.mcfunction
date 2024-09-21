kill @e[type=item,tag=stellarity.aota.sharanga,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.8_membranes,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.3_diamonds,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/spectral_fury
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
