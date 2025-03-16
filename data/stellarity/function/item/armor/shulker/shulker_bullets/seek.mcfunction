data modify storage stellarity:temp shulker_armor.target set from entity @n[type=#kohara:hostile,distance=..24] UUID 
data modify storage stellarity:temp shulker_armor.target set from entity @a[limit=1,sort=nearest,tag=stellarity.items.shulker_armor.attacker,distance=..24] UUID

data modify entity @s Target set from storage stellarity:temp shulker_armor.target

execute unless entity @n[type=#kohara:hostile,distance=..24] run function stellarity:item/armor/shulker/shulker_bullets/remove