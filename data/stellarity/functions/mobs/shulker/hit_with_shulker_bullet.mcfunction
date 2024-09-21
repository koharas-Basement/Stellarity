advancement revoke @s only stellarity:events/hit_with_shulker_bullet_end_city

tag @s add stellarity.shulker.scheduled
schedule function stellarity:mobs/shulker/scheduled 1t append

damage @s 7 minecraft:mob_attack by @e[type=shulker,limit=1,sort=nearest]
