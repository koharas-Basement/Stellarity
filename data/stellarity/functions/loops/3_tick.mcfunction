# Makes Allays despawn naturally if they have spawned in The Hallow
execute as @e[type=allay,tag=stellarity.allay.natural_hallow_spawn] at @s run function stellarity:mobs/the_hallow_allay_despawn

schedule function stellarity:loops/3_tick 3t
