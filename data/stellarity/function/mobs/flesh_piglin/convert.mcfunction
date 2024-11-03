tag @s add stellarity.flesh_piglin

item replace entity @s weapon with air
execute if predicate kohara:chance/2percent run loot replace entity @s weapon loot stellarity:items/tools/hematic_pickaxe

attribute @s minecraft:generic.attack_damage modifier add stellarity:mob_stat 3 add_value
attribute @s minecraft:generic.armor modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:generic.knockback_resistance modifier add stellarity:mob_stat 0.15 add_value
attribute @s minecraft:generic.movement_speed modifier add stellarity:mob_stat -0.15 add_multiplied_base
attribute @s minecraft:generic.follow_range modifier add stellarity:mob_buff -0.86 add_multiplied_total

data merge entity @s {DeathLootTable:"stellarity:mobs/flesh_piglin",HandDropChances:[1f,0f]}
