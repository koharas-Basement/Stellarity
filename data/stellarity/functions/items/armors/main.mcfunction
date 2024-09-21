## Called by 'loops/player_loop.mcfunction'

execute if entity @s[predicate=stellarity:items/armor/wearing_full_shulker_armor] run function stellarity:items/armors/shulker_armor/apply_tankiness

execute if entity @s[predicate=stellarity:items/armor/wearing_full_hallowed_armor] run function stellarity:items/armors/hallowed_armor/loop
execute if entity @s[tag=stellarity.holy_protection,predicate=!stellarity:items/armor/wearing_full_hallowed_armor] run function stellarity:items/armors/hallowed_armor/holy_protection/force_remove

execute if entity @s[scores={stellarity.items.armors.chorus_champion_armor.until_combo_reset=1..}] run function stellarity:items/armors/chorus_champion_armor/reset_countdown
