setblock ~ ~1 ~ air replace

execute store result score #random stellarity.misc run random value 1..10

execute if score #random stellarity.misc matches 7..10 run \
	setblock ~ ~ ~ trial_spawner{normal_config:{total_mobs:6,simultaneous_mobs:2,simultaneous_mobs_added_per_player:2,total_mobs_added_per_player:1,ticks_between_spawn:30,spawn_potentials:[{data:{entity:{id:"skeleton",attributes:[{base:24d,id:"generic.max_health"},{id:"generic.armor",base:2d}],Health:24f},equipment:{loot_table:"stellarity:end_city/spawner_equipment/skeleton_normal",slot_drop_chances:0f}},weight:1}],loot_tables_to_eject:[{weight:1,data:"stellarity:end_city/trial_spawner/normal/consumables"},{weight:1,data:"stellarity:end_city/trial_spawner/normal/key"}]},\
	ominous_config:{total_mobs:6,simultaneous_mobs:2,simultaneous_mobs_added_per_player:2,total_mobs_added_per_player:1,ticks_between_spawn:30,spawn_potentials:[{data:{entity:{id:"skeleton",attributes:[{base:24d,id:"generic.max_health"},{id:"generic.armor",base:2d}],Health:24f},equipment:{loot_table:"stellarity:end_city/spawner_equipment/skeleton_ominous",slot_drop_chances:0f}},weight:1}],loot_tables_to_eject:[{weight:1,data:"stellarity:end_city/trial_spawner/ominous/consumables"},{weight:3,data:"stellarity:end_city/trial_spawner/ominous/key"}],"items_to_drop_when_ominous":"stellarity:trial_spawner/ominous_item_spawn"}}
