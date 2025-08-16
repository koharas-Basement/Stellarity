function stellarity:entity/shulking/redirect_bullets

execute positioned ~-2 ~-0.5 ~-2 run kill @e[type=shulker_bullet,dx=4,dz=4,dy=4]

execute store result bossbar stellarity:shulking value run data get entity @s Health
bossbar set stellarity:shulking players
bossbar set stellarity:shulking players @a[distance=..100]
