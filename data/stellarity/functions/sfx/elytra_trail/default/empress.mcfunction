execute if predicate stellarity:mobs/eol/is_daytime run function stellarity:sfx/elytra_trail/default/empress/daytime with storage stellarity:temp elytra_trail.position
execute unless predicate stellarity:mobs/eol/is_daytime run function stellarity:sfx/elytra_trail/default/empress/nighttime with storage stellarity:temp elytra_trail.position

particle end_rod ^ ^0.3 ^-1 0.3 0.3 0.3 0.01 3 force @a[distance=..256]
