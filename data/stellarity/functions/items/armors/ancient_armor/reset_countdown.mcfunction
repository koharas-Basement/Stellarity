scoreboard players remove @s stellarity.items.armors.ancient_armor.until_combo_reset 1
execute if score @s stellarity.items.armors.ancient_armor.until_combo_reset matches 0 run function stellarity:items/armors/ancient_armor/reset
