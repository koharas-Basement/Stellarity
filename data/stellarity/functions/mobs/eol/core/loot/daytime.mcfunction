loot spawn ~ ~ ~ loot stellarity:mobs/eol/daytime_drops
loot spawn ~ ~ ~ loot stellarity:mobs/dragon/extra_drops/day

execute as @e[type=item,distance=..1] run data modify entity @s Glowing set value 1b
execute as @e[type=item,distance=..1] run team join stellarity.eol.day_glow @s
execute as @e[type=item,distance=..1] run tag @s add stellarity.boss_drop
execute as @e[type=item,distance=..1] run tag @s add stellarity.item

summon experience_orb ~ ~ ~ {Value:1800s}
advancement grant @a[distance=..32] only stellarity:eol/fae_flayer
