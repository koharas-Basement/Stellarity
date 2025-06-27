# Hallowed Helmet
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/hallowed/helmet", parent:"minecraft.netherite_helmet"}

# Hallowed Chestplate
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/hallowed/chestplate", parent:"minecraft.netherite_chestplate"}

# Hallowed Leggings
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/hallowed/leggings", parent:"minecraft.netherite_leggings"}

# Hallowed Boots
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.hallowed_ingot,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/hallowed/boots", parent:"minecraft.netherite_boots"}

# Champion Helmet
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/champion/helmet", parent:"minecraft.netherite_helmet"}

# Champion Chestplate
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/champion/chestplate", parent:"minecraft.netherite_chestplate"}

# Champion Leggings
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/champion/leggings", parent:"minecraft.netherite_leggings"}

# Champion Boots
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.chorus_plating,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/champion/boots", parent:"minecraft.netherite_boots"}

# Shulker Helmet
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/shulker/helmet", parent:"minecraft.netherite_helmet"}

# Shulker Chestplate
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/shulker/chestplate", parent:"minecraft.netherite_chestplate"}

# Shulker Leggings
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/shulker/leggings", parent:"minecraft.netherite_leggings"}

# Shulker Boots
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/shulker/boots", parent:"minecraft.netherite_boots"}

# Floral Helmet
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_helmet,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/floral/helmet", parent:"minecraft.netherite_helmet"}

# Floral Chestplate
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_chestplate,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/floral/chestplate", parent:"minecraft.netherite_chestplate"}

# Floral Leggings
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_leggings,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/floral/leggings", parent:"minecraft.netherite_leggings"}

# Floral Boots
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_boots,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.cherry_leaves,scores={stellarity.aota.count=8}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/armor/floral/boots", parent:"minecraft.netherite_boots"}

