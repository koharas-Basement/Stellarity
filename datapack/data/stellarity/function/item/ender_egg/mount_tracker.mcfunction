summon marker ~ ~ ~ {Tags:["stellarity.marker","smithed.entity","smithed.strict","stellarity.ender_egg.tracker"]}

execute if predicate stellarity:chance/1_32_chance run tag @n[type=marker,tag=stellarity.ender_egg.tracker] add stellarity.ender_egg.spawn_4

ride @n[type=marker,tag=stellarity.ender_egg.tracker] mount @s
