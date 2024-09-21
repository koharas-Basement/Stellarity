data remove storage stellarity:temp aery_sword.item
data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.tag
execute store result score #damage stellarity.misc run data get storage stellarity:temp aery_sword.item."stellarity.aery_sword".damage 1
execute store result score #ability_count stellarity.misc run data get storage stellarity:temp aery_sword.item."stellarity.aery_sword".abilities

# Ambient particles
execute if score #damage stellarity.misc matches 0..2 run function stellarity:items/frigid_harvester/effects/particles/1
execute if score #damage stellarity.misc matches 3..5 run function stellarity:items/frigid_harvester/effects/particles/2
execute if score #damage stellarity.misc matches 6..8 run function stellarity:items/frigid_harvester/effects/particles/3
execute if score #damage stellarity.misc matches 9..13 run function stellarity:items/frigid_harvester/effects/particles/4
execute if score #damage stellarity.misc matches 14.. run function stellarity:items/frigid_harvester/effects/particles/5

## Ability unlocks
## Handled in loop instead of the 'kill' function due to weird quirks with advancements.
## Well, 'weird quirks', more like 'mojank moments'...
# Frostburn
execute if score #damage stellarity.misc matches 3.. \
	if score @s stellarity.items.aery_sword.kills.blaze matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["frostburn"]}}}} run \
	function stellarity:items/frigid_harvester/abilities/unlock/frostburn/progress
# Frost Barrier
execute if score #damage stellarity.misc matches 6.. \
	if score @s stellarity.items.aery_sword.kills.iron_golem matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["frost_barrier"]}}}} run \
	function stellarity:items/frigid_harvester/abilities/unlock/frost_barrier/unlock
# Arctic Wind
execute if score #damage stellarity.misc matches 9.. \
	if score @s stellarity.items.aery_sword.kills.stray matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["arctic_wind"]}}}} run \
	function stellarity:items/frigid_harvester/abilities/unlock/arctic_wind/progress
# Piercing Cold
execute if score #damage stellarity.misc matches 6.. \
	if score @s stellarity.items.aery_sword.kills.witch matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["piercing_cold"]}}}} run \
	function stellarity:items/frigid_harvester/abilities/unlock/piercing_cold/progress
# Anima Conduit
execute if score #damage stellarity.misc matches 14.. \
	if score @s stellarity.items.aery_sword.kills.wither matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["anima_conduit"]}}}} run \
	function stellarity:items/frigid_harvester/abilities/unlock/anima_conduit/unlock
# Cryonics
execute if score #damage stellarity.misc matches 14.. \
	if score @s stellarity.items.aery_sword.kills.ender_dragon matches 1.. \
	unless data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["cryonics"]}}}} run \
	function stellarity:items/frigid_harvester/abilities/unlock/cryonics/unlock

## Arctic Wind aura
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["arctic_wind"]}}}} run function stellarity:items/frigid_harvester/abilities/arctic_wind/aura


# Reset scoreboards used to detect when a special mob is killed
# (for rewarding the abilities ofc)
scoreboard players reset @s stellarity.items.aery_sword.kills.blaze
scoreboard players reset @s stellarity.items.aery_sword.kills.witch
scoreboard players reset @s stellarity.items.aery_sword.kills.stray
scoreboard players reset @s stellarity.items.aery_sword.kills.iron_golem
scoreboard players reset @s stellarity.items.aery_sword.kills.wither
scoreboard players reset @s stellarity.items.aery_sword.kills.ender_dragon
