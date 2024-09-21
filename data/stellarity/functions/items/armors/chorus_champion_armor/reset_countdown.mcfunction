scoreboard players remove @s stellarity.items.armors.chorus_champion_armor.until_combo_reset 1
execute if score @s stellarity.items.armors.chorus_champion_armor.until_combo_reset matches 0 run function stellarity:items/armors/chorus_champion_armor/reset
