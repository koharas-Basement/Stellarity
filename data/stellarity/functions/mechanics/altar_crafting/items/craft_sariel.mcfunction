kill @e[type=item,tag=stellarity.altar_of_the_accursed.iron_sword,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.10_pixie_dust,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.5_gold_ingots,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/sariel

particle dust 1 0.345 0.345 2.3 ~ ~.1 ~ .65 .65 .65 0 20 normal
particle dust 0.906 0.906 0.906 2.3 ~ ~.1 ~ .65 .65 .65 0 20 normal

function stellarity:mechanics/altar_crafting/global_effects
