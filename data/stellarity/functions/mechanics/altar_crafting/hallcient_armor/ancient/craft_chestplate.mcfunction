kill @e[type=item,tag=stellarity.altar_of_the_accursed.ancient_plating_8,distance=..1.5,limit=1]

loot spawn ~ ~ ~ loot stellarity:items/armors/ancient_armor/chestplate

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_crafting/global_effects
