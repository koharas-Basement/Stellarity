# Sweep
particle minecraft:sweep_attack ~ ~ ~1.75 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~ ~ ~-1.75 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~1.75 ~ ~ 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.75 ~ ~ 0 0.2 0 0 1 force @a[distance=..128]

particle minecraft:sweep_attack ~1.33 ~ ~1.33 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~1.33 ~ ~-1.33 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.33 ~ ~1.33 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.33 ~ ~-1.33 0 0.2 0 0 1 force @a[distance=..128]

particle explosion ~ ~ ~
particle flash ~ ~ ~
particle end_rod ~ ~ ~ 0 0 0 0.13 30

execute if score #fire_aspect stellarity.misc matches 1.. run particle flame ~ ~0.05 ~ 1.25 0.33 1.25 0 93 normal
