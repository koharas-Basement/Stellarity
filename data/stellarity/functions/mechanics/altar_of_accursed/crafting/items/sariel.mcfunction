kill @e[type=item,tag=stellarity.aota.iron_sword,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.10_pixie_dust,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.5_gold_ingots,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/sariel
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

particle dust 1 0.345 0.345 2.3 ~ ~.1 ~ .65 .65 .65 0 20 normal
particle dust 0.906 0.906 0.906 2.3 ~ ~.1 ~ .65 .65 .65 0 20 normal

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
