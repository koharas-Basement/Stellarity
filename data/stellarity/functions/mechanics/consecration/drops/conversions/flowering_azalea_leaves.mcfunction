summon item ~ ~ ~ {Item:{id:"minecraft:azalea_leaves",Count:1b},Motion:[0d,0.1d,0d],PickupDelay:10s,Tags:["stellarity.consecration.ignore"]}
execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count stellarity.misc
