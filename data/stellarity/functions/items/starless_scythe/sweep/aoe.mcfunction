particle sweep_attack ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
execute as @e[type=!#kohara:invalid_targets,predicate=!stellarity:items/holding/starless_scythe,nbt=!{HurtTime:10s},distance=..1.2] at @s run function stellarity:items/starless_scythe/sweep/damage with storage stellarity:temp starless_scythe.sweep
