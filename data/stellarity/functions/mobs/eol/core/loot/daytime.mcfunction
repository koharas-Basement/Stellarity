loot spawn ~ ~ ~ loot stellarity:items/kaleidoscope
loot spawn ~ ~ ~ loot stellarity:items/trinkets/soaring_insignia

execute as @e[type=item,distance=..1] run data modify entity @s Glowing set value 1b
execute as @e[type=item,distance=..1] run team join stellarity.golden_glow @s
execute as @e[type=item,distance=..1] run tag @s add stellarity.boss_drop

summon experience_orb ~ ~ ~ {Value:1800s}
advancement grant @a[distance=..32] only stellarity:eol/fae_flayer
