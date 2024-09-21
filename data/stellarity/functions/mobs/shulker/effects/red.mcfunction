damage @s 9 kohara:simulated_explosion by @e[type=shulker,limit=1,sort=nearest,tag=stellarity.end_city.red_shulker]
execute as @a[distance=0.01..1.5] run damage @s 5 kohara:simulated_explosion by @e[type=shulker,limit=1,sort=nearest,tag=stellarity.end_city.red_shulker]

particle explosion ~ ~ ~ 0 0 0 0 1 force

playsound entity.generic.explode hostile @a[distance=0..] ~ ~ ~ 0.9 1
