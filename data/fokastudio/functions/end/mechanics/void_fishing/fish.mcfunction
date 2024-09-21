setblock ~ ~ ~ air
kill @e[type=fishing_bobber,limit=1,sort=nearest]
loot spawn ~ ~1 ~ loot fokastudio:end/void_fishing
data merge entity @e[type=item,limit=1,sort=nearest] {Motion:[0.0d,0.5d,0.0d],NoGravity:1b,Glowing:1b}
team join foka.purple_glow @e[type=item,limit=1,sort=nearest]
