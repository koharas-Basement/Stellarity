data merge entity @s {DeathLootTable:"stellarity:stronghold/mobs/pillager",PatrolLeader:0b,HandDropChances:[0.085f, 0f]}

loot replace entity @s weapon.mainhand loot stellarity:stronghold/mobs/buff/pillager

execute store result score #arrow stellarity.misc run random value 1..8
execute if score #arrow stellarity.misc matches 1 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"harming"} 64
execute if score #arrow stellarity.misc matches 2 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"long_slowness"} 64
execute if score #arrow stellarity.misc matches 3 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"strong_slowness"} 64
execute if score #arrow stellarity.misc matches 4 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"poison"} 64
execute if score #arrow stellarity.misc matches 5 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"long_poison"} 64
execute if score #arrow stellarity.misc matches 6 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"strong_poison"} 64
execute if score #arrow stellarity.misc matches 7 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"weakness"} 64
execute if score #arrow stellarity.misc matches 8 run \
	item replace entity @s weapon.offhand with tipped_arrow{Potion:"long_weakness"} 64

tag @s add stellarity.stronghold.buffed

attribute @s generic.armor modifier add 39147e49-acc7-4a91-96f1-af1c41b25e0d "stellarity.stronghold_defense_buff" 3 add
attribute @s generic.movement_speed modifier add 65b0c631-0e11-4c4e-9111-281843d92f1b "stellarity.stronghold_speed_buff" 0.1 multiply_base
effect give @s regeneration infinite 0 true
