damage @s 5 minecraft:mob_projectile by @e[type=shulker,limit=1,sort=nearest]

scoreboard players set #heal kohara.misc 3000
execute as @e[type=shulker,limit=1,sort=nearest,tag=stellarity.end_city.pink_shulker] run function kohara:heal