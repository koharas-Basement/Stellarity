# Cursed Enchiridion/Enchillada/Tome/Whatever
execute if score @s stellarity.misc matches 1 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.enchanted_book] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/cursed_tome

# Chorus Plating
execute if score @s stellarity.misc matches 2 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.iron_ingot] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.popped_chorus_fruit,scores={stellarity.aota.count=2}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/chorus_plating

# Copying Enderite Upgrade Smithing Template
execute if score @s stellarity.misc matches 3 \  
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.purpur_block,scores={stellarity.aota.count=9}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=5}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/smithing_template

# Pandora's Barrel
execute if score @s stellarity.misc matches 3 \   
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.barrel,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.iron_block,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.gold_block,scores={stellarity.aota.count=1}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/pandoras_barrel

# Spectral Fury
execute if score @s stellarity.misc matches 4 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.sharanga] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.phantom_membrane,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.diamond,scores={stellarity.aota.count=3}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/spectral_fury

# Hematic Pickaxe
execute if score @s stellarity.misc matches 3 \   
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.living_flesh] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_pickaxe] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/hematic_pickaxe

# Call of The Void
execute if score @s stellarity.misc matches 4 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.bow] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=16}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.dragon_breath,scores={stellarity.aota.count=8}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/call_of_the_void

# Sandstorm Trident
execute if score @s stellarity.misc matches 4 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.trident] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.breeze_rod,scores={stellarity.aota.count=2}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.sand_rune,scores={stellarity.aota.count=1}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/sandstorm_trident
