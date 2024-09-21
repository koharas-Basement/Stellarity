kill @e[type=item,tag=stellarity.altar_of_the_accursed.hallowed_ingot_4,distance=..1.5,limit=1]

loot spawn ~ ~ ~ loot stellarity:items/armors/hallowed_armor/boots

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_crafting/global_effects
