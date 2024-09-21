# Sweep
particle minecraft:sweep_attack ~ ~ ~1.75 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~ ~ ~-1.75 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~1.75 ~ ~ 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.75 ~ ~ 0 0.2 0 0 1 force @a[distance=..128]

particle minecraft:sweep_attack ~1.25 ~ ~1.25 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~1.25 ~ ~-1.25 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.25 ~ ~1.25 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.25 ~ ~-1.25 0 0.2 0 0 1 force @a[distance=..128]

particle explosion ~ ~ ~
particle flash ~ ~ ~
#particle end_rod ~ ~ ~ 0 0 0 0.1 10
#particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 10

execute rotated ~ 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~30 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~60 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~90 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~120 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~150 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~180 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~210 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~240 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~270 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~300 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0
execute rotated ~330 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.00000035 0

execute rotated ~15 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~45 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~75 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~105 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~135 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~165 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~195 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~225 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~255 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~285 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~315 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute rotated ~345 0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.0000002 0

execute if score #fire_aspect stellarity.misc matches 1.. run particle flame ~ ~0.05 ~ 1.25 0.33 1.25 0 21 normal
