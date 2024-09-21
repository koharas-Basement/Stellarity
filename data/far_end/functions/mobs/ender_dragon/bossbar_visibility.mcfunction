execute at @s as @a[distance=150..] run tag @s add foka.dragon_music.removal_schedule

execute at @s as @a[distance=..150] run tag @s add foka.dragon_music
execute at @s as @a[distance=..150] if entity @s run bossbar set fe:ender_dragon players @a[distance=..150]
execute at @s as @a[distance=..150] if entity @s run bossbar set fokastudio:end/crystal_count players @a[distance=..150]
