particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle end_rod ~ ~ ~ 2.2 2.2 2.2 0.4 60 force
particle poof ~ ~ ~ 2.2 2.2 2.2 0 60 force

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 1 0.8

execute as @e[type=!#kohara:invalid_targets,distance=..4.375] run damage @s 12 kohara:simulated_explosion by @s from @p[predicate=stellarity:items/holding_sabrewing]
kill @s
