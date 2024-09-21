execute as @e[type=item,distance=..1.5,tag=!stellarity.aota.skip,nbt={OnGround:1b}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/tags
execute if entity @e[type=item,distance=..1.5] run \
	function stellarity:mechanics/altar_of_accursed/crafting/checks
