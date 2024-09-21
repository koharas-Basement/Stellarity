loot spawn ~ ~ ~ loot stellarity:items/perm_buffs/rageroot
execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count stellarity.misc
tag @e[type=item,limit=1,sort=nearest] add stellarity.consecration.ignore
