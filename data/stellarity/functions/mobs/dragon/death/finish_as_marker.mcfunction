particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.8 100 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.6 100 force
particle minecraft:cloud ~ ~ ~ 0 0 0 0.4 100 force

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 100 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.8 100 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.6 100 force

particle minecraft:end_rod ~ ~ ~ 0 0 0 1 100 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.8 100 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.6 100 force

playsound minecraft:entity.warden.death hostile @a[distance=0..] ~ ~ ~ 8 .7
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=0..] ~ ~ ~ 8 0

execute store result score #loot stellarity.misc run loot spawn ~ ~ ~ loot stellarity:mobs/dragon/loot_50
execute if score #loot stellarity.misc matches 0 run loot spawn ~ ~ ~ loot stellarity:mobs/dragon/loot
loot spawn ~ ~ ~ loot stellarity:mobs/dragon/extra_drops

execute as @e[type=item,distance=..1] run data merge entity @s {Motion:[0.0d,-0.61d,0.0d],NoGravity:1b,Glowing:1b}
execute as @e[type=item,distance=..1] run team join stellarity.purple_glow @s
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run tag @s add stellarity.boss_drop
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run tag @s add stellarity.item

kill @s
