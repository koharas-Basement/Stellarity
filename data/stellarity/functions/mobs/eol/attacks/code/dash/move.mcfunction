tp @s ^ ^ ^1.5 ~ ~

playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~1 ~ 2.2 0.8

particle firework ~ ~1 ~ 1 1 1 0.07 6 force
execute if entity @s[tag=stellarity.eol.nighttime] run particle cherry_leaves ~ ~1 ~ 1 1 1 0.07 3 force
execute if entity @s[tag=stellarity.eol.daytime] run particle flame ~ ~1 ~ 1 1 1 0.07 3 force

execute as @a[distance=..2.5,nbt={HurtTime:0s}] run function stellarity:mobs/eol/attacks/code/dash/damage
