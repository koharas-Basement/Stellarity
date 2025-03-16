data remove storage stellarity:temp aery_sword.item
data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.components
execute store result score #damage_rounded stellarity.misc run data get storage stellarity:temp aery_sword.item."minecraft:custom_data"."stellarity.aery_sword".damage 1
execute store result score #ability_count stellarity.misc run data get storage stellarity:temp aery_sword.item."minecraft:custom_data"."stellarity.aery_sword".abilities

# Ambient particles
execute if score #damage_rounded stellarity.misc matches 0..2 run function stellarity:item/frigid_harvester/effects/particles/1
execute if score #damage_rounded stellarity.misc matches 3..5 run function stellarity:item/frigid_harvester/effects/particles/2
execute if score #damage_rounded stellarity.misc matches 6..8 run function stellarity:item/frigid_harvester/effects/particles/3
execute if score #damage_rounded stellarity.misc matches 9..11 run function stellarity:item/frigid_harvester/effects/particles/4
execute if score #damage_rounded stellarity.misc matches 12 run function stellarity:item/frigid_harvester/effects/particles/5

## Ability unlocks
## Handled in loop instead of the 'kill' function due to weird quirks with advancements.
## Well, 'weird quirks', more like 'mojank moments'...
# Frostburn
execute if score #damage_rounded stellarity.misc matches 3.. \
	if score @s stellarity.items.aery_sword.kills.blaze matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["frostburn"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/frostburn/progress
# Frost Barrier
execute if score #damage_rounded stellarity.misc matches 6.. \
	if score @s stellarity.items.aery_sword.kills.iron_golem matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["frost_barrier"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/frost_barrier/unlock
# Piercing Cold
execute if score #damage_rounded stellarity.misc matches 6.. \
	if score @s stellarity.items.aery_sword.kills.witch matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["piercing_cold"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/piercing_cold/progress
# Arctic Wind
execute if score #damage_rounded stellarity.misc matches 9.. \
	if score @s stellarity.items.aery_sword.kills.stray matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["arctic_wind"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/arctic_wind/progress
# Embrittlement
execute if score #damage_rounded stellarity.misc matches 6.. \
	if score @s stellarity.items.aery_sword.kills.wither_skeleton matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["embrittlement"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/embrittlement/progress
# Anima Conduit
execute if score #damage_rounded stellarity.misc matches 12.. \
	if score @s stellarity.items.aery_sword.kills.wither matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["anima_conduit"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/anima_conduit/unlock
# Cryonics
execute if score #damage_rounded stellarity.misc matches 12.. \
	if score @s stellarity.items.aery_sword.kills.ender_dragon matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["cryonics"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/cryonics/unlock
# Echo
execute if score #damage_rounded stellarity.misc matches 12.. \
	if score @s stellarity.items.aery_sword.kills.warden matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["echo"]}}}}} run \
	function stellarity:item/frigid_harvester/abilities/unlock/echo/unlock

## Arctic Wind aura
execute if data storage stellarity:temp {aery_sword:{item:{"minecraft:custom_data":{stellarity.aery_sword:{abilities:["arctic_wind"]}}}}} run function stellarity:item/frigid_harvester/abilities/arctic_wind/aura

# Reset scoreboards used to detect when a special mob is killed
# (for rewarding the abilities ofc)
scoreboard players reset @s stellarity.items.aery_sword.kills.blaze
scoreboard players reset @s stellarity.items.aery_sword.kills.witch
scoreboard players reset @s stellarity.items.aery_sword.kills.stray
scoreboard players reset @s stellarity.items.aery_sword.kills.iron_golem
scoreboard players reset @s stellarity.items.aery_sword.kills.wither
scoreboard players reset @s stellarity.items.aery_sword.kills.ender_dragon
scoreboard players reset @s stellarity.items.aery_sword.kills.wither_skeleton
scoreboard players reset @s stellarity.items.aery_sword.kills.warden
