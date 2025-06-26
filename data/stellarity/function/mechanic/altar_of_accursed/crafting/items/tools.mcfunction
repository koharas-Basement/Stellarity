# Shulker Pickaxe
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_pickaxe,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_pickaxe", parent:"minecraft.netherite_pickaxe"}

# Shulker Axe
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_axe,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_axe", parent:"minecraft.netherite_axe"}

# Shulker Shovel
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_shovel,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_shovel", parent:"minecraft.netherite_shovel"}

# Shulker Hoe
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_hoe,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_hoe", parent:"minecraft.netherite_hoe"}

