execute if biome ~ ~ ~ stellarity:blazing_dunes run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"flame",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ stellarity:crystal_crags run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"witch",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ far_end:amethyst_forest run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"witch",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ far_end:warped_marsh run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"splash",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ stellarity:prismarine_forest run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"splash",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ stellarity:the_hallow run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"end_rod",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ far_end:ashfall_delta run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"smoke",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ far_end:the_nest run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"smoke",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ far_end:void run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ far_end:flesh_tundra run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"instant_effect",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ stellarity:frosted_hills run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"instant_effect",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ stellarity:sculk_growth run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"sculk_charge_pop",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

execute if biome ~ ~ ~ far_end:end_wilds run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ far_end:ender_waste run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ minecraft:end_barrens run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ minecraft:end_highlands run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ minecraft:end_midlands run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}
execute if biome ~ ~ ~ minecraft:small_end_islands run \
	summon area_effect_cloud ~ ~ ~ \
	{Radius:1.8,Particle:"dragon_breath",Tags:["stellarity.void_fishing_aec"],Duration:2147483647}

function stellarity:mechanics/void_fishing/as_aec/wave
