# Netherite Armor
tag @s[nbt={Item:{id:"minecraft:netherite_helmet",Count:1b}}] add stellarity.aota.netherite_helmet
tag @s[nbt={Item:{id:"minecraft:netherite_leggings",Count:1b}}] add stellarity.aota.netherite_leggings
tag @s[nbt={Item:{id:"minecraft:netherite_chestplate",Count:1b}}] add stellarity.aota.netherite_chestplate
tag @s[nbt={Item:{id:"minecraft:netherite_boots",Count:1b}}] add stellarity.aota.netherite_boots

# Shulker Shells
tag @s[nbt={Item:{id:"minecraft:shulker_shell",Count:8b}}] add stellarity.aota.shulker_shells
# Shulker Tools
execute if entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.netherite_pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_hoe",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.netherite_hoe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_shovel",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.netherite_shovel
execute if entity @s[nbt={Item:{id:"minecraft:netherite_axe",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.netherite_axe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_sword",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.netherite_sword

# Sariel
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.iron_sword
tag @s[nbt={Item:{id:"minecraft:glowstone_dust",Count:10b,tag:{stellarity.special_item:"pixie_dust"}}}] add stellarity.aota.10_pixie_dust
tag @s[nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] add stellarity.aota.5_gold_ingots

# Sabrewing
execute if entity @s[nbt={Item:{id:"minecraft:bow",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.bow
tag @s[nbt={Item:{id:"minecraft:feather",Count:10b}}] add stellarity.aota.10_feathers
tag @s[nbt={Item:{id:"minecraft:gold_ingot",Count:12b}}] add stellarity.aota.12_gold_ingots
tag @s[nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}}] add stellarity.aota.netherite_ingot

# Cursed Enchiridion
tag @s[nbt={Item:{id:"minecraft:enchanted_book",Count:1b}}] add stellarity.aota.enchanted_book

# Ancient Wooden Sword
execute if entity @s[nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.wooden_sword

# Zephyr
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.golden_sword
tag @s[nbt={Item:{id:"minecraft:sugar",Count:6b}}] add stellarity.aota.6_sugar

# Pandora's Barrel
execute if entity @s[nbt={Item:{id:"minecraft:barrel",Count:1b}}] unless data entity @s Item.tag."stellarity.special_item" run tag @s add stellarity.aota.barrel
tag @s[nbt={Item:{id:"minecraft:iron_block",Count:1b}}] add stellarity.aota.1_iron_block
tag @s[nbt={Item:{id:"minecraft:gold_block",Count:1b}}] add stellarity.aota.1_gold_block

# Hallowed and Ancient Armor sets
tag @s[nbt={Item:{id:"minecraft:iron_ingot",Count:8b,tag:{stellarity.special_item:"hallowed_ingot"}}}] add stellarity.aota.hallowed_ingots
tag @s[nbt={Item:{id:"minecraft:iron_ingot",Count:8b,tag:{stellarity.special_item:"ancient_plating"}}}] add stellarity.aota.ancient_plating

# Discenchanting (while it is last, it takes priority over everything)
execute if entity @s[nbt={Item:{id:"minecraft:book",Count:1b}}] run tag @s add stellarity.aota.book
execute if data entity @s Item.tag.Enchantments if data entity @s Item.tag.Enchantments[0].id run tag @s add stellarity.aota.enchanted

data modify entity @s PickupDelay set value 32767s
data modify entity @s Glowing set value 1b
team join stellarity.purple_glow @s