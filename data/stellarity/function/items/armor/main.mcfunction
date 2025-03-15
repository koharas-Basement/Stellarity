## Called by 'loops/player_loop.mcfunction'

execute if entity @s[predicate=stellarity:items/armor/shulker/wearing_any_piece] run function stellarity:items/armor/shulker/main

execute if entity @s[predicate=stellarity:items/armor/wearing_full_hallowed_armor] run function stellarity:items/armor/hallowed/loop
execute if entity @s[tag=stellarity.holy_protection,predicate=!stellarity:items/armor/wearing_full_hallowed_armor] run function stellarity:items/armor/hallowed/holy_protection/force_remove

execute if entity @s[predicate=stellarity:items/armor/wearing_full_chorus_champion_armor,scores={stellarity.items.armors.chorus_champion_armor.until_combo_reset=1..}] run function stellarity:items/armor/chorus_champion/reset_countdown

execute if entity @s[predicate=stellarity:items/armor/floral/wearing_any_piece] run function stellarity:items/armor/floral/main
