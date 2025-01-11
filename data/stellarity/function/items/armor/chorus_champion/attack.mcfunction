attribute @s attack_damage modifier remove stellarity:chorus_champion_armor.combo
attribute @s attack_speed modifier remove stellarity:chorus_champion_armor.combo

execute unless score @s stellarity.items.armors.chorus_champion_armor.combo matches 1.. run function stellarity:items/armor/chorus_champion/sounds/0
execute if score @s stellarity.items.armors.chorus_champion_armor.combo matches 1 run function stellarity:items/armor/chorus_champion/sounds/1
execute if score @s stellarity.items.armors.chorus_champion_armor.combo matches 2 run function stellarity:items/armor/chorus_champion/sounds/2
execute if score @s stellarity.items.armors.chorus_champion_armor.combo matches 3 run function stellarity:items/armor/chorus_champion/sounds/3
execute if score @s stellarity.items.armors.chorus_champion_armor.combo matches 4 run function stellarity:items/armor/chorus_champion/sounds/4

execute if predicate {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:inverted","term":{"condition":"minecraft:entity_scores","entity":"this","scores":{"stellarity.items.armors.chorus_champion_armor.until_combo_reset":{"min":1}}}},{"condition":"minecraft:entity_scores","entity":"this","scores":{"stellarity.items.armors.chorus_champion_armor.until_combo_reset":{"max":30}}}]} run function stellarity:items/armor/chorus_champion/increase_damage

tag @s add stellarity.items.armors.chorus_champion_armor.remove_scheduled
schedule function stellarity:items/armor/chorus_champion/remove_adv/schedule 1t append
