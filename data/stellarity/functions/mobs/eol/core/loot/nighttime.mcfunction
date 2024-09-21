execute store result score #temp1 stellarity.misc run loot spawn ~ ~ ~ loot stellarity:mobs/eol/loot_50
execute if score #temp1 stellarity.misc matches 0 run loot spawn ~ ~ ~ loot stellarity:mobs/eol/loot
loot spawn ~ ~ ~ loot stellarity:mobs/dragon/extra_drops/night

execute as @e[type=item,distance=..1] run data modify entity @s Glowing set value 1b
execute as @e[type=item,distance=..1] run team join stellarity.eol.night_glow @s
execute as @e[type=item,distance=..1] run tag @s add stellarity.boss_drop
execute as @e[type=item,distance=..1] run tag @s add stellarity.item

summon experience_orb ~ ~ ~ {Value:600s}
