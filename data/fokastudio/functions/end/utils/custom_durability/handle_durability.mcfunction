
execute if data entity @s[tag=!du_hit_entity] SelectedItem.tag.foka_durability{enabled:1b} unless data entity @s SelectedItem.tag.foka_durability{item_dur:0} run function fokastudio:end/utils/custom_durability/process_mainhand
execute if data entity @s[tag=du_hit_entity] SelectedItem.tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/damage_mainhand
execute if data entity @s Inventory[{Slot:-106b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_offhand

execute if data entity @s Inventory[{Slot:100b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_boots
execute if data entity @s Inventory[{Slot:101b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_leggings
execute if data entity @s Inventory[{Slot:102b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_chestplate
execute if data entity @s Inventory[{Slot:103b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_helmet
