kill @e[type=item,tag=stellarity.aota.enderite_smithing_template,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.living_flesh,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.netherite_pickaxe,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/tools/hematic_pickaxe
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
