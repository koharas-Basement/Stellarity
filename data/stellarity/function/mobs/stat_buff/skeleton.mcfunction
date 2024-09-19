execute if predicate kohara:chance/33percent run item replace entity @s weapon with stone_sword

attribute @s minecraft:generic.attack_damage modifier add stellarity:damage_boost 0.16 add_multiplied_base
attribute @s minecraft:generic.max_health modifier add stellarity:health_boost 4 add_value
attribute @s minecraft:generic.armor modifier add stellarity:armor_boost 2 add_value
attribute @s minecraft:generic.armor_toughness modifier add stellarity:armor_toughness_boost 1 add_value
attribute @s minecraft:generic.knockback_resistance modifier add stellarity:knockback_resistance 0.1 add_value
attribute @s minecraft:generic.movement_speed modifier add stellarity:movement_speed 0.05 add_multiplied_total
attribute @s minecraft:generic.follow_range modifier add stellarity:follow_range 0.33 add_multiplied_total

data merge entity @s {Health:24.0f,DeathLootTable:"stellarity:mobs/buffed/skeleton"}

execute at @s if biome ~ ~ ~ stellarity:frozen_spikes run function stellarity:mobs/stat_buff/skeleton/frozen_spikes
