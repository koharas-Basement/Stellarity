loot spawn ~ ~ ~ loot stellarity:items/cursed_tome
data modify storage stellarity:temp cursed_tome.default set from entity @e[type=item,limit=1,sort=nearest] Item.tag.pages
kill @e[type=item,limit=1,sort=nearest]
