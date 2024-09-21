attribute @s generic.attack_damage modifier remove 5ec8048e-f25b-11ec-b939-0242ac120002

execute unless score @s stellarity.items.armors.ancient_armor.combo matches 1.. run function stellarity:items/armors/ancient_armor/sounds/0

execute if score @s stellarity.items.armors.ancient_armor.combo matches 1 run function stellarity:items/armors/ancient_armor/sounds/1

execute if score @s stellarity.items.armors.ancient_armor.combo matches 2 run function stellarity:items/armors/ancient_armor/sounds/2

execute if score @s stellarity.items.armors.ancient_armor.combo matches 3 run function stellarity:items/armors/ancient_armor/sounds/3

execute if score @s stellarity.items.armors.ancient_armor.combo matches 4 run function stellarity:items/armors/ancient_armor/sounds/4

execute unless score @s stellarity.items.armors.ancient_armor.combo matches 1.. run attribute @s generic.attack_damage modifier add 5ec8048e-f25b-11ec-b939-0242ac120002 "wrath_of_the_ancients" 0.06 multiply_base
attribute @s[scores={stellarity.items.armors.ancient_armor.combo=1}] generic.attack_damage modifier add 5ec8048e-f25b-11ec-b939-0242ac120002 "wrath_of_the_ancients" 0.12 multiply_base
attribute @s[scores={stellarity.items.armors.ancient_armor.combo=2}] generic.attack_damage modifier add 5ec8048e-f25b-11ec-b939-0242ac120002 "wrath_of_the_ancients" 0.18 multiply_base
attribute @s[scores={stellarity.items.armors.ancient_armor.combo=3}] generic.attack_damage modifier add 5ec8048e-f25b-11ec-b939-0242ac120002 "wrath_of_the_ancients" 0.24 multiply_base
attribute @s[scores={stellarity.items.armors.ancient_armor.combo=4}] generic.attack_damage modifier add 5ec8048e-f25b-11ec-b939-0242ac120002 "wrath_of_the_ancients" 0.3 multiply_base

execute unless score @s stellarity.items.armors.ancient_armor.combo matches 4.. run scoreboard players add @s stellarity.items.armors.ancient_armor.combo 1
scoreboard players set @s stellarity.items.armors.ancient_armor.until_combo_reset 60

tag @s add stellarity.items.armors.ancient_armor.remove_scheduled
schedule function stellarity:items/armors/ancient_armor/remove_adv/schedule 1t append
