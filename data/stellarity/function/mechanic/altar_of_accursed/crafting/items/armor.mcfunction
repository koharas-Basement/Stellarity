## Hallowed
# Helmet
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_helmet",loot:"stellarity:item/armor/hallowed/helmet"}

# Chestplate
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_chestplate",loot:"stellarity:item/armor/hallowed/chestplate"}

# Leggings
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_leggings",loot:"stellarity:item/armor/hallowed/leggings"}

# Boots
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_boots",loot:"stellarity:item/armor/hallowed/boots"}

## Ancient
# Helmet
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_helmet",loot:"stellarity:item/armor/ancient/helmet"}

# Chestplate
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_chestplate",loot:"stellarity:item/armor/ancient/chestplate"}

# Leggings
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_leggings",loot:"stellarity:item/armor/ancient/leggings"}

# Boots
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_boots",loot:"stellarity:item/armor/ancient/boots"}

## Shulker
# Helmet
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_helmet",loot:"stellarity:item/armor/shulker/helmet"}

# Chestplate
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_chestplate",loot:"stellarity:item/armor/shulker/chestplate"}

# Leggings
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_leggings",loot:"stellarity:item/armor/shulker/leggings"}

# Boots
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_boots",loot:"stellarity:item/armor/shulker/boots"}

## Floral
# Helmet
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_helmet",loot:"stellarity:item/armor/floral/helmet"}

# Chestplate
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_chestplate",loot:"stellarity:item/armor/floral/chestplate"}

# Leggings
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_leggings",loot:"stellarity:item/armor/floral/leggings"}

# Boots
execute if score @s stellarity.misc matches 3 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots] run \
	function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_armor {parent:"minecraft.netherite_boots",loot:"stellarity:item/armor/floral/boots"}
