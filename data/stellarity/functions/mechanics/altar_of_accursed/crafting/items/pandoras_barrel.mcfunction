kill @e[type=item,tag=stellarity.aota.barrel,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.1_gold_block,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.1_iron_block,distance=..1.5,limit=1]

loot spawn ~ ~-.4 ~ loot stellarity:items/pandoras_barrel
loot spawn ~ ~-.4 ~ loot stellarity:items/pandoras_barrel
tag @e[type=item,limit=2,sort=nearest] add stellarity.aota.skip

playsound minecraft:entity.warden.ambient block @a[distance=0..] ~ ~ ~ 0.5 1

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
