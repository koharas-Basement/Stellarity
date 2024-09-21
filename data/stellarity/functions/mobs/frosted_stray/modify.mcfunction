tag @s add stellarity.frosted_stray

execute if predicate kohara:chance/25percent run item replace entity @s weapon with stone_sword
execute if predicate kohara:chance/3percent run function stellarity:mobs/frosted_stray/give_frigid_harvester

attribute @s minecraft:generic.attack_damage modifier add e02b5f9f-6b28-43b8-9b3a-05d5b32ea718 "stellarity.damage_boost" 0.2 multiply_base
attribute @s minecraft:generic.max_health modifier add 44f2f651-1e6f-4aa9-9f17-92021947fc70 "stellarity.health_boost" 6 add
attribute @s minecraft:generic.armor modifier add 0d9d2682-dc1f-45c6-afcc-1a517b4d6db2 "stellarity.armor_boost" 2 add
attribute @s minecraft:generic.knockback_resistance modifier add 46741a9f-4fbf-49ed-8d82-4abc27db6a67 "stellarity.knockback_resistance" 0.2 add
attribute @s minecraft:generic.movement_speed modifier add ac60d56a-76b2-4e45-8321-b2c9c08303df "stellarity.movement_speed" 0.05 multiply
attribute @s minecraft:generic.follow_range modifier add 5c71dae2-ad6e-4d51-8d18-7bb74abbdbc1 "stellarity.follow_range" 0.33 multiply

data modify entity @s Health set value 26.0f
data modify entity @s DeathLootTable set value "stellarity:mobs/frosted_stray"
