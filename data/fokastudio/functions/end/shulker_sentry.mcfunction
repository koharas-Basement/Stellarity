# Makes Shulker Bullets spawned via special spawners target nearest player

execute as @e[type=shulker_bullet,tag=shulker_sentry] at @s run data modify entity @s Target set from entity @p UUID
