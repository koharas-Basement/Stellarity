data modify storage stellarity:temp aota.enchants set from entity @e[type=item,tag=stellarity.aota.bow,distance=..1.5,limit=1] Item.tag.Enchantments

kill @e[type=item,tag=stellarity.aota.bow,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.10_feathers,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.12_gold_ingots,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.netherite_ingot,distance=..1.5,limit=1]

loot spawn ~ ~-.4 ~ loot stellarity:items/sabrewing
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set from storage stellarity:temp aota.enchants

particle end_rod ~ ~.1 ~ 0 0 0 0.25 50 normal

particle end_rod ~ ~.1 ~ 0 0 0 0.1 25 normal

function stellarity:mechanics/altar_of_accursed/crafting/global_effects

data remove storage stellarity:temp aota.enchants
