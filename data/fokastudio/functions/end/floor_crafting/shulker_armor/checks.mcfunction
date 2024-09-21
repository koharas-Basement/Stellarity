tag @e[nbt={OnGround:1b,Item:{id:"minecraft:shulker_shell",Count:15b}},distance=..1] add foka.altar_of_the_accursed.shulker_shells

tag @e[nbt={OnGround:1b,Item:{id:"minecraft:netherite_helmet",Count:1b}},distance=..1] add foka.altar_of_the_accursed.netherite_helmet
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:netherite_leggings",Count:1b}},distance=..1] add foka.altar_of_the_accursed.netherite_leggings
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:netherite_chestplate",Count:1b}},distance=..1] add foka.altar_of_the_accursed.netherite_chestplate
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:netherite_boots",Count:1b}},distance=..1] add foka.altar_of_the_accursed.netherite_boots

execute if entity @e[tag=foka.altar_of_the_accursed.shulker_shells,distance=..1] if entity @e[tag=foka.altar_of_the_accursed.netherite_helmet,distance=..1] at @s run function fokastudio:end/floor_crafting/shulker_armor/craft_helmet
execute if entity @e[tag=foka.altar_of_the_accursed.shulker_shells,distance=..1] if entity @e[tag=foka.altar_of_the_accursed.netherite_chestplate,distance=..1] run function fokastudio:end/floor_crafting/shulker_armor/craft_chestplate
execute if entity @e[tag=foka.altar_of_the_accursed.shulker_shells,distance=..1] if entity @e[tag=foka.altar_of_the_accursed.netherite_leggings,distance=..1] run function fokastudio:end/floor_crafting/shulker_armor/craft_leggings
execute if entity @e[tag=foka.altar_of_the_accursed.shulker_shells,distance=..1] if entity @e[tag=foka.altar_of_the_accursed.netherite_boots,distance=..1] run function fokastudio:end/floor_crafting/shulker_armor/craft_boots
