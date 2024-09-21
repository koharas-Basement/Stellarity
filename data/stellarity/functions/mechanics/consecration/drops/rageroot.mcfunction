loot spawn ~ 400 ~ loot stellarity:items/perm_buffs/rageroot
execute positioned ~ 400 ~ run data modify storage stellarity:temp consecration.drop set from entity @e[type=item,limit=1,sort=nearest] Item
execute positioned ~ 400 ~ run kill @e[type=item,limit=1,sort=nearest]

summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Motion:[0d,0.033d,0d],NoGravity:1b,Glowing:1b,PickupDelay:10s,Tags:["stellarity.consecration.ignore"]}
team join stellarity.eol.night_glow @e[type=item,limit=1,sort=nearest,tag=stellarity.consecration.ignore]
data modify entity @e[type=item,limit=1,sort=nearest,tag=stellarity.consecration.ignore] Item set from storage stellarity:temp consecration.drop
execute store result entity @e[type=item,limit=1,sort=nearest,tag=stellarity.consecration.ignore] Item.Count byte 1 run scoreboard players get #count stellarity.misc
