# Shulker Sword
execute if score @s stellarity.misc matches 3 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.shulker_shell,scores={stellarity.aota.count=4}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_sword,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/tool/shulker_sword", parent:"minecraft.netherite_sword"}

# Spectral Fury
execute if score @s stellarity.misc matches 4 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.diamond,scores={stellarity.aota.count=3}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.phantom_membrane,scores={stellarity.aota.count=8}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.sharanga,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/weapon/spectral_fury", parent:"minecraft.bow"}

# Sandstorm Trident
execute if score @s stellarity.misc matches 4 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.sand_rune,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.trident,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.breeze_rod,scores={stellarity.aota.count=2}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_generic {loot:"stellarity:item/weapon/sandstorm_trident"}

# Tamaris
execute if score @s stellarity.misc matches 4 \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_smithing_template,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.netherite_sword,scores={stellarity.aota.count=1}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.stellarity.enderite_shard,scores={stellarity.aota.count=8}] \
   if entity @e[type=item,distance=..1.5,tag=stellarity.aota.minecraft.wither_skeleton_skull,scores={stellarity.aota.count=1}] \
   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:"stellarity:item/weapon/tamaris", parent:"minecraft.netherite_sword"}

