# Add extra damage
scoreboard players operation #damage stellarity.misc += #damage_extra stellarity.misc
# But also cap it at 14
execute if score #damage stellarity.misc matches 1200.. run scoreboard players set #damage stellarity.misc 1200

data modify storage stellarity:temp aery_sword.custom_data set from storage stellarity:temp aery_sword.item."minecraft:custom_data"
data modify storage stellarity:temp aery_sword.attributes set from storage stellarity:temp aery_sword.item."minecraft:attribute_modifiers"

# Visual and sound effects
execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/souls
execute unless score #damage stellarity.misc matches 1200.. run \
	function stellarity:items/frigid_harvester/effects/crack/crack

## Item modifier part thingy
# Make the sword fireproof after reaching 6 extra damage (10 total)
data modify storage stellarity:temp aery_sword.fire_resistant set value ""
execute if score #damage stellarity.misc matches 600.. run data modify storage stellarity:temp aery_sword.fire_resistant set value "\"minecraft:fire_resistant\": {},"
# Custom model data depending on extra damage
# Level 0 (Base)
execute if score #damage stellarity.misc matches 0..299 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90031
# Level 1
execute if score #damage stellarity.misc matches 300..599 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90032
# Level 2
execute if score #damage stellarity.misc matches 600..899 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90033
# Level 3
execute if score #damage stellarity.misc matches 900..1199 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90034
# Level 4 (Maxed)
execute if score #damage stellarity.misc matches 1200.. run \
	data modify storage stellarity:temp aery_sword.cmd set value 90035
# Movement Speed reduction
# Level 0 (Base)
execute if score #damage stellarity.misc matches 0..299 run \
	data modify storage stellarity:temp aery_sword.speed set value 0.0d
# Level 1
execute if score #damage stellarity.misc matches 300..599 run \
	data modify storage stellarity:temp aery_sword.speed set value -0.05d
# Level 2
execute if score #damage stellarity.misc matches 600..899 run \
	data modify storage stellarity:temp aery_sword.speed set value -0.1d
# Level 3
execute if score #damage stellarity.misc matches 900..1199 run \
	data modify storage stellarity:temp aery_sword.speed set value -0.15d
# Level 4 (Maxed)
execute if score #damage stellarity.misc matches 1200.. run \
	data modify storage stellarity:temp aery_sword.speed set value -0.2d
# Attack Speed
# Level 0 (Base)
execute if score #damage stellarity.misc matches 0..299 run \
	data modify storage stellarity:temp aery_sword.atk_speed set value -3d
# Level 1
execute if score #damage stellarity.misc matches 300..599 run \
	data modify storage stellarity:temp aery_sword.atk_speed set value -3.05d
# Level 2
execute if score #damage stellarity.misc matches 600..899 run \
	data modify storage stellarity:temp aery_sword.atk_speed set value -3.1d
# Level 3
execute if score #damage stellarity.misc matches 900..1199 run \
	data modify storage stellarity:temp aery_sword.atk_speed set value -3.2d
# Level 4 (Maxed)
execute if score #damage stellarity.misc matches 1200.. run \
	data modify storage stellarity:temp aery_sword.atk_speed set value -3.25d
# Add 3 to the damage (for base damage increase)
scoreboard players operation #damage_inc stellarity.misc = #damage stellarity.misc
scoreboard players set #3 stellarity.misc 300
scoreboard players operation #damage_inc stellarity.misc += #3 stellarity.misc
# Translate it into the storage
# 'aery_sword.damage_inc' is the damage value that includes the 4 base damage
# 'aery_sword.damage' is the actual extra damage stat used in the item NBT
execute store result storage stellarity:temp aery_sword.damage_inc double 0.01 run \
	scoreboard players get #damage_inc stellarity.misc
execute store result storage stellarity:temp aery_sword.damage double 0.01 run \
	scoreboard players get #damage stellarity.misc

data modify storage stellarity:temp aery_sword.custom_data."stellarity.aery_sword".damage set from storage stellarity:temp aery_sword.damage
data modify storage stellarity:temp aery_sword.attributes.modifiers[{type:"minecraft:attack_damage"}].amount set from storage stellarity:temp aery_sword.damage_inc
data modify storage stellarity:temp aery_sword.attributes.modifiers[{type:"minecraft:movement_speed"}].amount set from storage stellarity:temp aery_sword.speed
data modify storage stellarity:temp aery_sword.attributes.modifiers[{type:"minecraft:attack_speed"}].amount set from storage stellarity:temp aery_sword.atk_speed

data modify storage stellarity:temp aery_sword.custom_data set string storage stellarity:temp aery_sword.custom_data
data modify storage stellarity:temp aery_sword.attributes set string storage stellarity:temp aery_sword.custom_data

function stellarity:items/frigid_harvester/item_modifier/aery_sword_increase_damage with storage stellarity:temp aery_sword

# Advancement for getting +9 damage
execute if score #damage stellarity.misc matches 900.. run \
	advancement grant @s only stellarity:exploration/max_out_aery_sword

# Maxing out the Harvester
execute if score #damage stellarity.misc matches 1200.. run \
	function stellarity:items/frigid_harvester/ultra_max_out
