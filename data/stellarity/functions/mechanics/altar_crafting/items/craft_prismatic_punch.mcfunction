kill @e[type=item,tag=stellarity.altar_of_the_accursed.crossbow,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.24_pixie_dust,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.6_diamonds,distance=..1.5,limit=1]

loot spawn ~ ~ ~ loot stellarity:items/prismatic_punch

particle dust 0.98 0.243 0.243 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.98 0.686 0.243 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.98 0.871 0.243 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.6 0.98 0.243 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.243 0.894 0.98 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.318 0.243 0.98 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.98 0.243 0.918 2.3 ~ ~ ~ .5 .5 .5 0 3 normal
particle dust 0.647 0.243 0.98 2.3 ~ ~ ~ .5 .5 .5 0 3 normal

particle end_rod ~ ~.1 ~ 0 0 0 0.1 25 normal

function stellarity:mechanics/altar_crafting/global_effects
