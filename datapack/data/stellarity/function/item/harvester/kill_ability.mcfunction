data remove storage stellarity:temp aery_sword.item
data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.components

execute store result score #ability_count stellarity.misc run data get storage stellarity:temp aery_sword.item."minecraft:custom_data"."stellarity.aery_sword".abilities

execute unless score #ability_count stellarity.misc matches 3.. run function stellarity:item/harvester/abilities/check_for_unlocks

advancement revoke @s only stellarity:event/item/aery_sword/kill_for_abilities
