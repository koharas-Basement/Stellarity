## Called by 'loops/player_loop.mcfunction'

execute if entity @s[predicate=stellarity:items/wearing_full_shulker_armor] run function stellarity:items/armors/shulker_armor/apply_tankiness

execute if entity @s[predicate=stellarity:items/wearing_full_hallowed_armor] run function stellarity:items/armors/hallowed_armor/loop
execute if entity @s[predicate=!stellarity:items/wearing_full_hallowed_armor,tag=stellarity.holy_protection] run function stellarity:items/armors/hallowed_armor/holy_protection/force_remove

execute if entity @s[scores={stellarity.items.armors.ancient_armor.until_combo_reset=1..}] run function stellarity:items/armors/ancient_armor/reset_countdown
