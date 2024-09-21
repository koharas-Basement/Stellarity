kill @s

particle explosion ~ ~ ~ 0 0 0 1 0 force
particle smoke ~ ~ ~ 0 0 0 0.06 14 force

playsound minecraft:entity.wither.shoot block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

execute at @e[type=marker,limit=1,sort=nearest,tag=stellarity.altar_of_the_light] positioned ~ ~3 ~ run function stellarity:mobs/eol/summon
