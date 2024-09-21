tag @s add stellarity.flesh_piglin

item replace entity @s weapon with air
execute if predicate kohara:chance/2percent run loot replace entity @s weapon loot stellarity:items/tools/hematic_pickaxe

attribute @s minecraft:generic.attack_damage modifier add e02b5f9f-6b28-43b8-9b3a-05d5b32ea718 "stellarity.damage_boost" 0.15 multiply_base
attribute @s minecraft:generic.max_health modifier add 44f2f651-1e6f-4aa9-9f17-92021947fc70 "stellarity.health_boost" 5 add
attribute @s minecraft:generic.armor modifier add 0d9d2682-dc1f-45c6-afcc-1a517b4d6db2 "stellarity.armor_boost" 3 add
attribute @s minecraft:generic.knockback_resistance modifier add 46741a9f-4fbf-49ed-8d82-4abc27db6a67 "stellarity.knockback_resistance" 0.15 add

data merge entity @s {Health:25f,DeathLootTable:"stellarity:mobs/flesh_piglin",HandDropChances:[1f,0f]}
