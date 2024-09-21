loot spawn ~ ~-5 ~ loot stellarity:pandoras_barrel/helmet
loot spawn ~ ~-5 ~ loot stellarity:pandoras_barrel/helmet_generic
execute positioned ~ ~-5 ~ run data modify storage stellarity:temp pandoras_barrel.item set from entity @e[type=item,limit=1,sort=nearest] Item
execute positioned ~ ~-5 ~ run kill @e[type=item,limit=2,sort=nearest,distance=..0.0001]

execute store result score @s stellarity.misc2 run data get storage stellarity:temp pandoras_barrel.item.tag.AttributeModifiers[0].Amount 1
