scoreboard players operation #damage kohara.misc = @s stellarity.dot.prismatic_inferno.damage

execute if entity @s[type=#kohara:undead] run scoreboard players operation #damage kohara.misc += @s stellarity.dot.prismatic_inferno.damage

scoreboard players reset @s stellarity.dot.prismatic_inferno.progress

scoreboard players add @s stellarity.dot.prismatic_inferno.particle_cycle 1

execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 1 run \
	particle dust 0.98 0.243 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 2 run \
	particle dust 0.98 0.686 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 3 run \
	particle dust 0.98 0.871 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 4 run \
	particle dust 0.6 0.98 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 5 run \
	particle dust 0.243 0.894 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 6 run \
	particle dust 0.318 0.243 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 7 run \
	particle dust 0.98 0.243 0.918 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]
execute if score @s stellarity.dot.prismatic_inferno.particle_cycle matches 8 run \
	particle dust 0.647 0.243 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 12 force @a[distance=..32]

scoreboard players reset @s[scores={stellarity.dot.prismatic_inferno.particle_cycle=8}] stellarity.dot.prismatic_inferno.particle_cycle

#particle minecraft:flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~

tag @p add kohara.attacker

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,damage_type:"stellarity:dot/prismatic_inferno",tag:"stellarity.damage.dot.prismatic_inferno"}
