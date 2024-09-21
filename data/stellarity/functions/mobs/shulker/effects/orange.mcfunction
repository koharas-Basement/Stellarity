#damage @s 7 minecraft:mob_projectile by @e[type=shulker,limit=1,sort=nearest]

execute anchored eyes run summon minecraft:small_fireball ^ ^0.5 ^ {power:[0d,-10d,0d]}
data modify entity @e[type=small_fireball,limit=1,sort=nearest] Owner set from entity @e[type=shulker,limit=1,sort=nearest,tag=stellarity.end_city.orange_shulker] UUID
