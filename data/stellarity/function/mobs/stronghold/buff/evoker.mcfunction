data merge entity @s {DeathLootTable:"stellarity:stronghold/mobs/evoker",PatrolLeader:0b}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mobs/buff/evoker

tag @s add stellarity.stronghold.buffed

attribute @s armor modifier add stellarity:stronghold.defense_buff 4 add_value
attribute @s movement_speed modifier add stellarity:stronghold.speed_buff 0.1 add_multiplied_base
