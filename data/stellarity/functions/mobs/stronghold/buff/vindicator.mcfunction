data merge entity @s {DeathLootTable:"stellarity:stronghold/mobs/vindicator",PatrolLeader:0b,HandDropChances:[0.085f, 0f]}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mobs/buff/vindicator
execute if predicate kohara:chance/25percent run item replace entity @s weapon.offhand with shield

tag @s add stellarity.stronghold.buffed

attribute @s generic.movement_speed modifier add 65b0c631-0e11-4c4e-9111-281843d92f1b "stellarity.stronghold_speed_buff" 0.1 multiply_base

execute if predicate kohara:chance/15percent run function stellarity:mobs/stronghold/buff/vindicator_elektra_shield
