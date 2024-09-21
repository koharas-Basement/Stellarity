data modify storage stellarity:temp aota.enchants set from entity @e[type=item,tag=stellarity.aota.netherite_chestplate,distance=..1.5,limit=1] Item.tag.Enchantments

kill @e[type=item,tag=stellarity.aota.shulker_shells,distance=..1.5,limit=1]
kill @e[type=item,tag=stellarity.aota.netherite_chestplate,distance=..1.5,limit=1]

loot spawn ~ ~-.4 ~ loot stellarity:items/armors/shulker_armor/chestplate
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set from storage stellarity:temp aota.enchants

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function stellarity:mechanics/altar_of_accursed/crafting/global_effects

advancement grant @p only stellarity:aota/craft_full_shulker_armor craft_shulker_chestplate

data remove storage stellarity:temp aota.enchants
