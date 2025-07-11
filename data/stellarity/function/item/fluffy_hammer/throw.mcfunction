data modify storage stellarity:temp fluffy_hammer.item set value {}
data modify storage stellarity:temp fluffy_hammer.item set from entity @s SelectedItem
execute if data storage stellarity:temp fluffy_hammer.item.components.minecraft:custom_data{stellarity.special_item:"fluffy_hammer"} run item replace entity @s weapon.mainhand with minecraft:air
data modify storage stellarity:temp fluffy_hammer.owner set from entity @s UUID
execute as @s unless data storage stellarity:temp fluffy_hammer.item.components.minecraft:custom_data{stellarity.special_item:"fluffy_hammer"} if data entity @s equipment.offhand.components."minecraft:custom_data"{stellarity.special_item:"fluffy_hammer"} run function stellarity:item/fluffy_hammer/offhand_replace

execute if data storage stellarity:temp fluffy_hammer.item.components.minecraft:custom_data{stellarity.special_item:"fluffy_hammer"} run function stellarity:item/fluffy_hammer/summon with storage stellarity:temp fluffy_hammer

advancement revoke @s from stellarity:event/item/throw_fluffy_hammer
