execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 0..2 run \
	particle dust 0.98 0.243 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 3..4 run \
	particle dust 0.98 0.439 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 5..6 run \
	particle dust 0.98 0.686 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 7..8 run \
	particle dust 0.98 0.796 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 9..10 run \
	particle dust 0.98 0.871 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 11..12 run \
	particle dust 0.808 0.98 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 13..14 run \
	particle dust 0.392 0.98 0.243 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 15..16 run \
	particle dust 0.243 0.894 0.98 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 17..18 run \
	particle dust 0.243 0.612 0.98 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 19..20 run \
	particle dust 0.318 0.243 0.98 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 21..22 run \
	particle dust 0.647 0.243 0.98 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 23..24 run \
	particle dust 0.82 0.243 0.98 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 25..26 run \
	particle dust 0.98 0.243 0.918 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]
execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 27..28 run \
	particle dust 0.98 0.243 0.427 2 ~ ~ ~ 0.17 0.17 0.17 0 10 force @a[distance=..164]

particle end_rod ~ ~ ~ 0.19 0.19 0.19 0.01 2 force @a[distance=..164]

execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 28.. run \
	scoreboard players reset @s stellarity.items.prismatic_punch.particle_cycle

execute if entity @s[tag=stellarity.prismatic_blast.multishot] anchored eyes run function stellarity:items/prismatic_punch/blast_particles_multishot
