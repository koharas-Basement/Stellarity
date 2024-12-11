advancement grant @a[distance=..10] only stellarity:end_city/crystal_crusher

execute if entity @s[tag=stellarity.end_city.crystal_small_tower] run setblock ~ ~-1 ~ vault[ominous=false,vault_state=inactive]{config:{loot_table:"stellarity:end_city/vault/normal",key_item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data": 90000, "minecraft:item_name": '{"fallback":"Purpur Key","translate":"stellarity.items.materials.keys.purpur"}', "minecraft:lore": ['""', '{"color":"#EEEEEE","fallback":"Opens Vaults in End Cities","italic":false,"translate":"stellarity.items.materials.keys.purpur.description"}', '""', '{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'], "minecraft:rarity": "uncommon", "minecraft:custom_data": {stellarity.special_item: "purpur_key"}}}}} replace

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
	rotated ~ ~ if block ^ ^ ^2 magenta_stained_glass \
	if block ^ ^ ^-2 air run \
	setblock ~ ~-1 ~ vault[ominous=false,vault_state=inactive,facing=north]{config:{loot_table:"stellarity:end_city/vault/normal",key_item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data": 90000, "minecraft:item_name": '{"fallback":"Purpur Key","translate":"stellarity.items.materials.keys.purpur"}', "minecraft:lore": ['""', '{"color":"#EEEEEE","fallback":"Opens Vaults in End Cities","italic":false,"translate":"stellarity.items.materials.keys.purpur.description"}', '""', '{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'], "minecraft:rarity": "uncommon", "minecraft:custom_data": {stellarity.special_item: "purpur_key"}}}}} replace

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
	rotated ~ ~ if block ^ ^ ^-2 magenta_stained_glass \
	if block ^ ^ ^2 air run \
	setblock ~ ~-1 ~ vault[ominous=false,vault_state=inactive,facing=south]{config:{loot_table:"stellarity:end_city/vault/normal",key_item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data": 90000, "minecraft:item_name": '{"fallback":"Purpur Key","translate":"stellarity.items.materials.keys.purpur"}', "minecraft:lore": ['""', '{"color":"#EEEEEE","fallback":"Opens Vaults in End Cities","italic":false,"translate":"stellarity.items.materials.keys.purpur.description"}', '""', '{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'], "minecraft:rarity": "uncommon", "minecraft:custom_data": {stellarity.special_item: "purpur_key"}}}}} replace

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
	rotated ~ ~ if block ^ ^ ^2 magenta_stained_glass \
	if block ^ ^ ^-2 magenta_stained_glass \
	if block ^-2 ^ ^ air run \
	setblock ~ ~-1 ~ vault[ominous=false,vault_state=inactive,facing=west]{config:{loot_table:"stellarity:end_city/vault/normal",key_item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data": 90000, "minecraft:item_name": '{"fallback":"Purpur Key","translate":"stellarity.items.materials.keys.purpur"}', "minecraft:lore": ['""', '{"color":"#EEEEEE","fallback":"Opens Vaults in End Cities","italic":false,"translate":"stellarity.items.materials.keys.purpur.description"}', '""', '{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'], "minecraft:rarity": "uncommon", "minecraft:custom_data": {stellarity.special_item: "purpur_key"}}}}} replace

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
	rotated ~ ~ if block ^ ^ ^2 magenta_stained_glass \
	if block ^ ^ ^-2 magenta_stained_glass \
	if block ^2 ^ ^ air run \
	setblock ~ ~-1 ~ vault[ominous=false,vault_state=inactive,facing=east]{config:{loot_table:"stellarity:end_city/vault/normal",key_item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data": 90000, "minecraft:item_name": '{"fallback":"Purpur Key","translate":"stellarity.items.materials.keys.purpur"}', "minecraft:lore": ['""', '{"color":"#EEEEEE","fallback":"Opens Vaults in End Cities","italic":false,"translate":"stellarity.items.materials.keys.purpur.description"}', '""', '{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'], "minecraft:rarity": "uncommon", "minecraft:custom_data": {stellarity.special_item: "purpur_key"}}}}} replace

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
	rotated ~ ~ if block ^2 ^ ^ air \
	if block ^-2 ^ ^ air \
	if block ^ ^ ^-2 air \
	if block ^ ^ ^2 air run \
	setblock ~ ~-1 ~ vault[ominous=false,vault_state=inactive,facing=north]{config:{loot_table:"stellarity:end_city/vault/normal",key_item:{id:"minecraft:trial_key",count:1,components:{"minecraft:custom_model_data": 90000, "minecraft:item_name": '{"fallback":"Purpur Key","translate":"stellarity.items.materials.keys.purpur"}', "minecraft:lore": ['""', '{"color":"#EEEEEE","fallback":"Opens Vaults in End Cities","italic":false,"translate":"stellarity.items.materials.keys.purpur.description"}', '""', '{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'], "minecraft:rarity": "uncommon", "minecraft:custom_data": {stellarity.special_item: "purpur_key"}}}}}

fill ~-1 ~5 ~-1 ~1 ~5 ~1 iron_block replace obsidian
fill ~ ~6 ~ ~ ~6 ~ beacon replace glass
execute if block ~ ~6 ~ beacon run setblock ~ ~7 ~ magenta_stained_glass_pane
execute if block ~ ~6 ~ beacon run summon marker ~ ~6 ~ {Tags:["stellarity.marker","stellarity.end_city.no_beacon"]}

particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
playsound entity.generic.explode block @a[distance=0..] ~ ~ ~ 1 0.75
playsound minecraft:block.respawn_anchor.deplete block @a[distance=0..] ~ ~ ~ 1 0

advancement grant @a[distance=..48] only stellarity:end_city/crystal_crusher
execute unless entity @e[type=end_crystal,distance=..200,tag=stellarity.end_city.crystal] run advancement grant @a[distance=..48] only stellarity:end_city/conqueror

kill @s
kill @n[type=interaction,tag=stellarity.end_city.crystal]
kill @n[type=marker,tag=stellarity.end_city.crystal]
