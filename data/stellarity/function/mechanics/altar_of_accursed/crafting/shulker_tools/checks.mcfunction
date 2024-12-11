# Pickaxe
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_pickaxe] run \
	function stellarity:mechanics/altar_of_accursed/crafting/shulker_tools/pickaxe

# Axe
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_axe] run \
	function stellarity:mechanics/altar_of_accursed/crafting/shulker_tools/axe

# Shovel
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_shovel] run \
	function stellarity:mechanics/altar_of_accursed/crafting/shulker_tools/shovel

# Hoe
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_hoe] run \
	function stellarity:mechanics/altar_of_accursed/crafting/shulker_tools/hoe

# Sword
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_sword] run \
	function stellarity:mechanics/altar_of_accursed/crafting/shulker_tools/sword
