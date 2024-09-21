data modify storage stellarity:temp enchants set from entity @e[tag=stellarity.altar_of_the_accursed.wooden_sword,distance=..1.5,limit=1] Item.tag.Enchantments

kill @e[type=item,tag=stellarity.altar_of_the_accursed.wooden_sword,distance=..1.5,limit=1]

loot spawn ~ ~ ~ loot stellarity:items/ancient_wooden_sword

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Enchantments set from storage stellarity:temp enchants

playsound minecraft:entity.player.breath block @a ~ ~ ~ 1 1

function stellarity:mechanics/altar_crafting/global_effects
