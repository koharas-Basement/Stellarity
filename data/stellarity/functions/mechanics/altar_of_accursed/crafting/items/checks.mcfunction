# Sariel
execute if entity @e[type=item,tag=stellarity.aota.iron_sword,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.10_pixie_dust,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.5_gold_ingots,distance=..1.5] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/sariel

# Sabrewing
execute if entity @e[type=item,tag=stellarity.aota.bow,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.10_feathers,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.12_gold_ingots,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.netherite_ingot,distance=..1.5] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/sabrewing

# Cursed Enchiridion/Enchillada/Tome/Whatever
execute if entity @e[type=item,tag=stellarity.aota.enchanted_book,distance=..1.5] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/cursed_tome

# Pandora's Barrel
execute if entity @e[type=item,tag=stellarity.aota.barrel,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.1_iron_block,distance=..1.5] \
	if entity @e[type=item,tag=stellarity.aota.1_gold_block,distance=..1.5] run \
	function stellarity:mechanics/altar_of_accursed/crafting/items/pandoras_barrel
