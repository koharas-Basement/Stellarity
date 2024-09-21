advancement revoke @s only stellarity:events/items/kill_with_zephyr

execute unless entity @s[tag=stellarity.zephyr.killed_entity] anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/zephyr/wind_spawn
