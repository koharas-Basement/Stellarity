attribute @s minecraft:generic.max_health base set 35
attribute @s minecraft:generic.armor modifier add stellarity:mob_stat 10 add_value
attribute @s minecraft:generic.armor_toughness modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:generic.knockback_resistance modifier add stellarity:mob_stat 0.3 add_value

effect give @s regeneration infinite 0 true

execute store result score #random stellarity.misc run random value 1..3
execute if score #random stellarity.misc matches 1 run attribute @s generic.scale modifier add stellarity:mob_stat -0.45 add_multiplied_total
execute if score #random stellarity.misc matches 2 run attribute @s generic.scale modifier add stellarity:mob_stat -0.35 add_multiplied_total
execute if score #random stellarity.misc matches 3 run attribute @s generic.scale modifier add stellarity:mob_stat -0.25 add_multiplied_total

data merge entity @s {Size:3,DeathLootTable:"stellarity:mobs/voided_slime",DeathLootTable:"stellarity:mobs/voided_slime"}

effect give @s instant_health 1 23 true

tag @s[tag=!stellarity.buffed] add stellarity.buffed
tag @s add stellarity.voided_slime
