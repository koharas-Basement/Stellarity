damage @s 5 minecraft:mob_projectile by @e[type=shulker,limit=1,sort=nearest,tag=stellarity.end_city.blue_shulker]

scoreboard players set #dot.time stellarity.misc 80
function stellarity:utils/status_effects/frostburn/apply

effect give @s slowness 9 0 true
