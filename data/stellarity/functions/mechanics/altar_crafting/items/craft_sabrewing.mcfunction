data modify storage stellarity:temp enchants set from entity @e[type=item,tag=stellarity.altar_of_the_accursed.bow,distance=..1.5,limit=1] Item.tag.Enchantments

kill @e[type=item,tag=stellarity.altar_of_the_accursed.bow,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.10_feathers,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.12_gold_ingots,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.altar_of_the_accursed.netherite_ingot,distance=..1.5,limit=1]

loot spawn ~ ~ ~ loot stellarity:items/sabrewing

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set from storage stellarity:temp enchants

particle end_rod ~ ~.1 ~ 0 0 0 0.25 50 normal

particle end_rod ~ ~.1 ~ 0 0 0 0.1 25 normal

function stellarity:mechanics/altar_crafting/global_effects
