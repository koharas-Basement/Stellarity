execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["anima_conduit"]}}}}} \ 
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={anima_conduit=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:anima_conduit}
execute if score @s stellarity.items.aery_sword.progress.anima_conduit matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:anima_conduit}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["arctic_wind"]}}}}} \
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={arctic_wind=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:arctic_wind}
execute if score @s stellarity.items.aery_sword.progress.arctic_wind matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:arctic_wind}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["cryonics"]}}}}} \ 
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={cryonics=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:cryonics}
execute if score @s stellarity.items.aery_sword.progress.cryonics matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:cryonics}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["echo"]}}}}} \ 
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={echo=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:echo}
execute if score @s stellarity.items.aery_sword.progress.echo matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:echo}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["embrittlement"]}}}}} \
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={embrittlement=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:embrittlement}
execute if score @s stellarity.items.aery_sword.progress.embrittlement matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:embrittlement}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["frost_barrier"]}}}}} \ 
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={frost_barrier=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:frost_barrier}
execute if score @s stellarity.items.aery_sword.progress.frost_barrier matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:frost_barrier}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["frostburn"]}}}}} \ 
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={frostburn=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:frostburn}
execute if score @s stellarity.items.aery_sword.progress.frostburn matches 5.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:frostburn}

execute unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["piercing_cold"]}}}}} \
	if entity @s[advancements={stellarity:event/item/aery_sword/kill_for_abilities={piercing_cold=true}}] \
	run function stellarity:item/harvester/abilities/progress_macro {ability:piercing_cold}
execute if score @s stellarity.items.aery_sword.progress.piercing_cold matches 1.. \
	run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:piercing_cold}
