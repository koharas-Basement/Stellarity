attribute @s minecraft:generic.attack_damage modifier add stellarity:mob_stat 6 add_value
attribute @s minecraft:generic.armor modifier add stellarity:mob_stat 2 add_value
attribute @s minecraft:generic.knockback_resistance modifier add stellarity:mob_stat 0.2 add_value
attribute @s minecraft:generic.follow_range modifier add stellarity:mob_stat 1 add_multiplied_total

data merge entity @s {Size:2,DeathLootTable:"stellarity:mobs/buffed/phantom"}

team join stellarity.phantom_glow @s
