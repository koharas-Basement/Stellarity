data modify storage stellarity:temp altar_of_the_sacred.item set from entity @s Item

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity:item":"treasure_head"}}}}} run \
function stellarity:mechanic/altar_of_the_sacred/reroll

execute unless score #difficulty stellarity.misc matches 0 \
unless score #empress_of_light.is_alive stellarity.misc matches 1 \
if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"}}}}} run \
function stellarity:mechanic/altar_of_the_sacred/spawn_empress

execute unless score #difficulty stellarity.misc matches 0 unless entity @n[type=allay,tag=stellarity.shulking,distance=..100] \
if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity:item":"shulker_body"}}}}} run \
function stellarity:mechanic/altar_of_the_sacred/spawn_shulking

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:iron_ingot"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/iron

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:gold_ingot"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/gold

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:emerald"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/emerald

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:diamond"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/diamond

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:netherite_ingot"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/netherite
