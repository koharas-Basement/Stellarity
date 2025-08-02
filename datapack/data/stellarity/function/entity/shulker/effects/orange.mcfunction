#damage @s 7 minecraft:mob_projectile by @n[type=shulker]

execute anchored eyes run summon minecraft:small_fireball ^ ^0.5 ^ {power:[0d,-10d,0d]}
data modify entity @n[type=small_fireball] Owner set from entity @n[type=shulker,tag=stellarity.end_city.orange_shulker] UUID
