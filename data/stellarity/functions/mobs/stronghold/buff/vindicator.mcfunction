data merge entity @s {DeathLootTable:"stellarity:stronghold/mobs/vindicator",PatrolLeader:0b,HandDropChances:[0.085f, 0f]}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mobs/buff/vindicator
execute if predicate stellarity:utils/chance/25percent run item replace entity @s weapon.offhand with shield

tag @s add stellarity.stronghold.buffed

attribute @s generic.armor modifier add 39147e49-acc7-4a91-96f1-af1c41b25e0d "stellarity.stronghold_defense_buff" 1 add
attribute @s generic.attack_damage modifier add 535599d2-8bd7-4b6d-9596-71a966be01f2 "stellarity.stronghold_attack_buff" 0.03 multiply_base
attribute @s generic.movement_speed modifier add 65b0c631-0e11-4c4e-9111-281843d92f1b "stellarity.stronghold_speed_buff" 0.1 multiply_base
effect give @s regeneration infinite 0 true
