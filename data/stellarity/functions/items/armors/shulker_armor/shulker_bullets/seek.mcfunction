data modify storage stellarity:temp shulker_armor.target set from entity @e[type=#kohara:hostile,limit=1,sort=nearest,distance=..24] UUID 
data modify storage stellarity:temp shulker_armor.target set from entity @a[limit=1,sort=nearest,tag=stellarity.items.shulker_armor.attacker,distance=..24] UUID

data modify entity @s Target set from storage stellarity:temp shulker_armor.target
