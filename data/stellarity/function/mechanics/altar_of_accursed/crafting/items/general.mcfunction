# Cursed Enchiridion/Enchillada/Tome/Whatever
execute if score @s stellarity.misc matches 1 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.enchanted_book] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/special/endonomicon

# Chorus Plating
execute if score @s stellarity.misc matches 2 \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.iron_ingot] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.popped_chorus_fruit,scores={stellarity.aota.count=2}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:items/materials/chorus_plating"}

# Copying Enderite Upgrade Smithing Template
execute if score @s stellarity.misc matches 3 \  
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.purpur_block,scores={stellarity.aota.count=9}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=5}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/special/smithing_template

# Pandora's Barrel
execute if score @s stellarity.misc matches 3 \   
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.barrel,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.iron_block,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.gold_block,scores={stellarity.aota.count=1}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:items/pandoras_barrel"}

# Book of Jinx
execute if score @s stellarity.misc matches 3 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.book,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=8}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=10}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:items/spellbooks/jinx"}

# Grand Tome of Teleportation
execute if score @s stellarity.misc matches 3 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.book,scores={stellarity.aota.count=1}] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.ender_pearl,scores={stellarity.aota.count=16}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=32}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:items/spellbooks/conveyance"}

# Crest of The End
execute if score @s stellarity.misc matches 3 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shield] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_ingot,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:items/trinkets/crest_of_the_end",parent:"minecraft.shield"}

# Satchel of Voids
execute if score @s stellarity.misc matches 4 \    
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.bundle] \ 
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.nether_star,scores={stellarity.aota.count=1}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=64}] \
	if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.starlight_soot,scores={stellarity.aota.count=64}] run \
	function stellarity:mechanics/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:items/porta_altar"}
