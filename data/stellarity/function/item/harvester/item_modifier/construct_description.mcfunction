# Setting them again because this is getting called by 2 things
# One of them is the normal damage scaler, which doesn't have the ability count
# Second is the ability unlocker, which doesn't have damage
# This system is kinda jank, but combining them both together had plenty of issues
# as this game is literally held on tape and semen
#
# Also, the values need to be updated anyway
data remove storage stellarity:temp aery_sword.item
data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.components
execute store result score #ability_count stellarity.misc run data get storage stellarity:temp aery_sword.item."minecraft:custom_data"."stellarity.aery_sword".abilities
execute store result score #damage stellarity.misc run data get storage stellarity:temp aery_sword.item."minecraft:custom_data"."stellarity.aery_sword".damage 100

# Initialize empty list
data modify storage stellarity:temp aery_sword.lore set value ['{"text":""}']

# Constructing base description
# If it has already gained 12 damage and has 3 abilities, this section will be an empty line
execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.1","color": "#EEEEEE","italic": false}'
execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.2","color": "#EEEEEE","italic": false}'
execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.3","color": "#EEEEEE","italic": false}'

# Empty line before the dynamic stuff
# They get added as soon as Harvester kills any mob, 
# so it always gets added regardless of whether there are any abilities or etc.
# But not if maxed, cause reminder, the only line there would be above it would be an empty line
execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp aery_sword.lore append value '{"text":""}'

# Dynamic stuff
execute if score #damage stellarity.misc matches ..11 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.4","color": "#EEEEEE","italic": false}'
execute if score #damage stellarity.misc matches ..11 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.5","color": "#EEEEEE","italic": false}'

execute if score #damage stellarity.misc matches 12..299 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.6","color": "#EEEEEE","italic": false}'

execute if score #damage stellarity.misc matches 300..599 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.7","color": "#EEEEEE","italic": false}'
execute if score #damage stellarity.misc matches 300..599 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.8","color": "#EEEEEE","italic": false}'


execute if score #damage stellarity.misc matches 600..1199 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.9","color": "#EEEEEE","italic": false}'
execute if score #damage stellarity.misc matches 600..1199 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.10","color": "#EEEEEE","italic": false}'

execute if score #damage stellarity.misc matches 1200 unless score #ability_count stellarity.misc matches 3 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.11","color": "#EEEEEE","italic": false}'
execute if score #damage stellarity.misc matches 1200 unless score #ability_count stellarity.misc matches 3 run data modify storage stellarity:temp aery_sword.lore append value '{"translate": "stellarity.items.weapons.harvester.description.12","color": "#EEEEEE","italic": false}'

# Add an empty line
execute if predicate {"condition": "minecraft:inverted","term": {"condition": "minecraft:all_of","terms": [{"condition": "minecraft:value_check","value": {"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "#damage"},"score": "stellarity.misc"},"range": 1200},{"condition": "minecraft:value_check","value": {"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "#ability_count"},"score": "stellarity.misc"},"range": 3}]}} run data modify storage stellarity:temp aery_sword.lore append value '{"text":""}'

# Append abilities
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["piercing_cold"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.piercing_cold","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["arctic_wind"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.arctic_wind","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["frostburn"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.frostburn","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["embrittlement"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.ebrittlement","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["frost_barrier"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.frost_barrier","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["anima_conduit"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.anima_conduit","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["echo"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.echo","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'
execute if data storage stellarity:temp {aery_sword:{custom_data:{stellarity.aery_sword:{abilities:["cryonics"]}}}} run data modify storage stellarity:temp aery_sword.lore append value '{"translate":"stellarity.items.weapons.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"stellarity.items.weapons.harvester.ability.cryonics","color":"#4BC6FF","italic":false},{"translate":"stellarity.items.weapons.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}'

# Append empty line if there is at least 1 ability
execute if score #ability_count stellarity.misc matches 1.. run data modify storage stellarity:temp aery_sword.lore append value '{"text":""}'

# Append the usual crap
data modify storage stellarity:temp aery_sword.lore append value '{"translate": "- Developer Item -","color": "#BA02D7","italic": false}'
data modify storage stellarity:temp aery_sword.lore append value '{"text":""}'
data modify storage stellarity:temp aery_sword.lore append value '{"translate": "Stellarity","color": "#CC26FF","italic": true}'

# And then finally modify the description
function stellarity:item/harvester/item_modifier/update_description with storage stellarity:temp aery_sword

# Imma put it here because I already have both variables needed to complete this
execute if score #damage stellarity.misc matches 1200 if score #ability_count stellarity.misc matches 3 run advancement grant @s only stellarity:exploration/harvester/max_out

