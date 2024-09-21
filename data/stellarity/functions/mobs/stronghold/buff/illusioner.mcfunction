data merge entity @s {DeathLootTable:"stellarity:stronghold/mobs/illusioner",PatrolLeader:0b}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mobs/buff/illusioner

tag @s add stellarity.stronghold.buffed

attribute @s generic.armor modifier add 39147e49-acc7-4a91-96f1-af1c41b25e0d "stellarity.stronghold_defense_buff" 4 add
attribute @s generic.movement_speed modifier add 65b0c631-0e11-4c4e-9111-281843d92f1b "stellarity.stronghold_speed_buff" 0.1 multiply_base
effect give @s regeneration infinite 0 true
