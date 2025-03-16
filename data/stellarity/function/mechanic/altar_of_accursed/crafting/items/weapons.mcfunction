# Pickaxe
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_pickaxe] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_pickaxe",parent:"minecraft.netherite_pickaxe"}

# Axe
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_axe] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_axe",parent:"minecraft.netherite_axe"}

# Shovel
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_shovel] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_shovel",parent:"minecraft.netherite_shovel"}

# Hoe
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_hoe] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_hoe",parent:"minecraft.netherite_hoe"}

# Sword
execute if score @s stellarity.misc matches 3 \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_sword] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_sword",parent:"minecraft.netherite_sword"}

# Spectral Fury
execute if score @s stellarity.misc matches 4 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.sharanga] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.phantom_membrane,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.diamond,scores={stellarity.aota.count=3}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/weapon/spectral_fury",parent:"minecraft.bow"}

# Call of The Void
execute if score @s stellarity.misc matches 4 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.bow] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=16}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.dragon_breath,scores={stellarity.aota.count=8}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/weapon/all_of_the_void",parent:"minecraft.bow"}

# Sandstorm Trident
execute if score @s stellarity.misc matches 4 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.trident] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.breeze_rod,scores={stellarity.aota.count=2}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.sand_rune,scores={stellarity.aota.count=1}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:item/weapon/sandstorm_trident"}

# Tamaris
execute if score @s stellarity.misc matches 4 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_sword] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.wither_skeleton_skull,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/weapon/tamaris",parent:"minecraft.netherite_sword"}
