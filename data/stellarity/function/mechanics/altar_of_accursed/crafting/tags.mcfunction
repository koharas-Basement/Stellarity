data modify storage stellarity:temp aota.item set from entity @s Item

# Cursed Enchiridion
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:enchanted_book",count:1}}} run tag @s add stellarity.aota.enchanted_book

# Pandora's Barrel
tag @s remove stellarity.aota.barrel
tag @s remove stellarity.aota.1_iron_block
tag @s remove stellarity.aota.1_gold_block
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:barrel",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.barrel
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:iron_block",count:1}}} run tag @s add stellarity.aota.1_iron_block
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:gold_block",count:1}}} run tag @s add stellarity.aota.1_gold_block

## Armor sets
# Netherite Armor
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_helmet",count:1}}} run tag @s add stellarity.aota.netherite_helmet
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_leggings",count:1}}} run tag @s add stellarity.aota.netherite_leggings
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_chestplate",count:1}}} run tag @s add stellarity.aota.netherite_chestplate
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_boots",count:1}}} run tag @s add stellarity.aota.netherite_boots
# Netherite Tools (for Shulker Tools)
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_pickaxe",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.netherite_pickaxe
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_hoe",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.netherite_hoe
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_shovel",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.netherite_shovel
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_axe",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.netherite_axe
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:netherite_sword",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.netherite_sword
# Materials
tag @s remove stellarity.aota.hallowed_ingots
tag @s remove stellarity.aota.chorus_plating
tag @s remove stellarity.aota.shulker_shells
tag @s remove stellarity.aota.8_cherry_leaves
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:iron_ingot",count:4,components:{"minecraft:custom_data":{stellarity.special_item:"hallowed_ingot"}}}}} run tag @s add stellarity.aota.hallowed_ingots
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:iron_ingot",count:4,components:{"minecraft:custom_data":{stellarity.special_item:"chorus_plating"}}}}} run tag @s add stellarity.aota.chorus_plating
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:shulker_shell",count:4}}} run tag @s add stellarity.aota.shulker_shells
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:cherry_leaves",count:8}}} run tag @s add stellarity.aota.8_cherry_leaves
# Enderite Upgrade Smithing Template
tag @s remove stellarity.aota.enderite_smithing_template
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_data":{stellarity.special_item:"enderite_smithing_template"}}}}} run tag @s add stellarity.aota.enderite_smithing_template

# Chorus Plating
tag @s remove stellarity.aota.iron_ingot
tag @s remove stellarity.aota.popped_chorus_fruit
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:iron_ingot",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.iron_ingot
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:popped_chorus_fruit",count:2}}} run tag @s add stellarity.aota.popped_chorus_fruit

# Copying Enderite Upgrade Smithing Templates
tag @s remove stellarity.aota.5_enderite_shards
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:amethyst_shard",count:5,components:{"minecraft:custom_data":{stellarity.special_item:"enderite_shard"}}}}} run tag @s add stellarity.aota.5_enderite_shards
tag @s remove stellarity.aota.9_purpur_blocks
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:purpur_block",count:9}}} run tag @s add stellarity.aota.9_purpur_blocks

# Spectral Fury
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{stellarity.special_item:"sharanga"}}}}} run tag @s add stellarity.aota.sharanga
tag @s remove stellarity.aota.8_membranes
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:phantom_membrane",count:8}}} run tag @s add stellarity.aota.8_membranes

# Call of The Void
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:bow",count:1}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.bow
tag @s remove stellarity.aota.16_enderite_shards
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:amethyst_shard",count:16,components:{"minecraft:custom_data":{stellarity.special_item:"enderite_shard"}}}}} run tag @s add stellarity.aota.16_enderite_shards
tag @s remove stellarity.aota.8_dragon_breath
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:dragon_breath",count:8}}} unless data storage stellarity:temp aota.item.component."minecraft:custom_data"."stellarity.special_item" run tag @s add stellarity.aota.8_dragon_breath

# Hematic Pickaxe
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:rotten_flesh",count:1,components:{"minecraft:custom_data":{stellarity.special_item:"living_flesh"}}}}} run tag @s add stellarity.aota.living_flesh

# Sandstorm Trident
tag @s remove stellarity.aota.2_breeze_rods
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:breeze_rod",count:2}}} run tag @s add stellarity.aota.2_breeze_rods
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:trident",count:1}}} run tag @s add stellarity.aota.trident
tag @s remove stellarity.aota.sand_rune
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_data":{stellarity.special_item:"sand_rune"}}}}} run tag @s add stellarity.aota.sand_rune

# Elytra trails
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:elytra",count:1}}} run tag @s add stellarity.aota.elytra

tag @s remove stellarity.aota.dye.white
tag @s remove stellarity.aota.dye.light_gray
tag @s remove stellarity.aota.dye.gray
tag @s remove stellarity.aota.dye.black
tag @s remove stellarity.aota.dye.brown
tag @s remove stellarity.aota.dye.red
tag @s remove stellarity.aota.dye.orange
tag @s remove stellarity.aota.dye.yellow
tag @s remove stellarity.aota.dye.lime
tag @s remove stellarity.aota.dye.green
tag @s remove stellarity.aota.dye.cyan
tag @s remove stellarity.aota.dye.light_blue
tag @s remove stellarity.aota.dye.blue
tag @s remove stellarity.aota.dye.purple
tag @s remove stellarity.aota.dye.magenta
tag @s remove stellarity.aota.dye.pink
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:white_dye",count:1}}} run tag @s add stellarity.aota.dye.white
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:light_gray_dye",count:1}}} run tag @s add stellarity.aota.dye.light_gray
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:gray_dye",count:1}}} run tag @s add stellarity.aota.dye.gray
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:black_dye",count:1}}} run tag @s add stellarity.aota.dye.black
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:brown_dye",count:1}}} run tag @s add stellarity.aota.dye.brown
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:red_dye",count:1}}} run tag @s add stellarity.aota.dye.red
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:orange_dye",count:1}}} run tag @s add stellarity.aota.dye.orange
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:yellow_dye",count:1}}} run tag @s add stellarity.aota.dye.yellow
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:lime_dye",count:1}}} run tag @s add stellarity.aota.dye.lime
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:green_dye",count:1}}} run tag @s add stellarity.aota.dye.green
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:cyan_dye",count:1}}} run tag @s add stellarity.aota.dye.cyan
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:light_blue_dye",count:1}}} run tag @s add stellarity.aota.dye.light_blue
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:blue_dye",count:1}}} run tag @s add stellarity.aota.dye.blue
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:purple_dye",count:1}}} run tag @s add stellarity.aota.dye.purple
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:magenta_dye",count:1}}} run tag @s add stellarity.aota.dye.magenta
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:pink_dye",count:1}}} run tag @s add stellarity.aota.dye.pink
tag @s remove stellarity.aota.water_bucket
execute if data storage stellarity:temp {aota:{item:{id:"minecraft:water_bucket",count:1}}} run tag @s add stellarity.aota.water_bucket

data merge entity @s {PickupDelay:21s,Glowing:1b}
team join stellarity.purple_glow @s

execute unless entity @s[tag=stellarity.aota.particles] at @s run particle minecraft:witch ~ ~.5 ~ 0 0 0 10 6 normal
execute unless entity @s[tag=stellarity.aota.particles] at @s run particle minecraft:smoke ~ ~.5 ~ 0 0 0 0.02 6 normal
tag @s add stellarity.aota.particles
