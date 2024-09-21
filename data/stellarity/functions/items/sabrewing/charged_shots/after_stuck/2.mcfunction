particle explosion ~ ~ ~ 0 0 0 0 1 force
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.22 25 force
particle poof ~ ~ ~ 0.5 0.5 0.5 0 25 force

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 1 1

execute as @e[type=!#kohara:invalid_targets,distance=..2.75] run damage @s 6 kohara:simulated_explosion by @s from @p[predicate=stellarity:items/holding_sabrewing]

kill @s
