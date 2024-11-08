loot replace entity @s weapon.mainhand loot stellarity:items/frigid_harvester

item replace entity @s armor.head with diamond_helmet[trim={material:"amethyst",pattern:"minecraft:flow",show_in_tooltip:false},enchantments={protection:4}]
item replace entity @s armor.chest with diamond_chestplate[trim={material:"amethyst",pattern:"minecraft:eye",show_in_tooltip:false},enchantments={protection:4}]

attribute @s minecraft:generic.attack_damage modifier add stellarity:harvester_miniboss 0.25 add_multiplied_total
attribute @s minecraft:generic.max_health modifier add stellarity:harvester_miniboss 26 add_value
attribute @s minecraft:generic.armor modifier add stellarity:harvester_miniboss 2 add_value
attribute @s minecraft:generic.armor_toughness modifier add stellarity:harvester_miniboss 1 add_value
attribute @s minecraft:generic.movement_speed modifier add stellarity:harvester_miniboss -0.15 add_multiplied_base
attribute @s minecraft:generic.movement_efficiency modifier add stellarity:harvester_miniboss 1 add_value
attribute @s minecraft:generic.knockback_resistance modifier add stellarity:harvester_miniboss 0.2 add_value

effect give @s instant_damage 1 23 true

data modify entity @s HandDropChances[0] set value 1f
