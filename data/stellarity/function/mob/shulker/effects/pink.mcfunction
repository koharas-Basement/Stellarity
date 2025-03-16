damage @s 5 minecraft:mob_projectile by @n[type=shulker]

scoreboard players set #heal kohara.misc 3000
execute as @n[type=shulker,tag=stellarity.end_city.pink_shulker] run function kohara:heal