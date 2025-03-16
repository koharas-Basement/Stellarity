execute as @e[type=item,distance=..1.5,tag=!stellarity.aota.skip,nbt={OnGround:1b}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/input/main

# Counting all input items (entities)
execute store result score @s stellarity.misc if entity @e[type=item,distance=..1.5]

execute if score @s stellarity.misc matches 1.. run \
	function stellarity:mechanic/altar_of_accursed/crafting/checks
