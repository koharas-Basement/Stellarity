particle end_rod ~ ~ ~ 0 0 0 0.04 10 normal
playsound minecraft:entity.player.attack.nodamage player @a[distance=0..] ~ ~ ~ 1 1.3

particle dust_color_transition 0.353 0.525 0.769 1 1 1 1 ~ ~ ~ 0.35 0.35 0.35 0 15 force @a[distance=..96]

playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 2
playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 1

kill @s
