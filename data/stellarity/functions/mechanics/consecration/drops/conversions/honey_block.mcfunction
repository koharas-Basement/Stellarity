kill @s

summon item ~ ~ ~ {Item:{id:"slime_block",Count:1b},Motion:[0d,0.1d,0d]}
execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count stellarity.misc
tag @e[type=item,limit=1,sort=nearest] add stellarity.consecration.ignore

function stellarity:mechanics/consecration/sfx
