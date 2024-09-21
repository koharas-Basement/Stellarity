data modify storage stellarity:temp aots.item set from entity @s Item

execute if data storage stellarity:temp {aots:{item:{tag:{stellarity.special_item:"treasure_head"}}}} run \
	function stellarity:mechanics/altar_of_light/reroll

execute unless score #difficulty stellarity.misc matches 0 \
	unless score #eol.is_alive stellarity.misc matches 1 \
	if data storage stellarity:temp {aots:{item:{tag:{stellarity.special_item:"pixie_dust"}}}} run \
	function stellarity:mechanics/altar_of_light/spawn_empress

execute if data storage stellarity:temp {aots:{item:{id:"minecraft:iron_ingot"}}} run \
	function stellarity:mechanics/altar_of_light/bless/materials/iron

execute if data storage stellarity:temp {aots:{item:{id:"minecraft:gold_ingot"}}} run \
	function stellarity:mechanics/altar_of_light/bless/materials/gold

execute if data storage stellarity:temp {aots:{item:{id:"minecraft:emerald"}}} run \
	function stellarity:mechanics/altar_of_light/bless/materials/emerald

execute if data storage stellarity:temp {aots:{item:{id:"minecraft:diamond"}}} run \
	function stellarity:mechanics/altar_of_light/bless/materials/diamond

execute if data storage stellarity:temp {aots:{item:{id:"minecraft:netherite_ingot"}}} run \
	function stellarity:mechanics/altar_of_light/bless/materials/netherite
