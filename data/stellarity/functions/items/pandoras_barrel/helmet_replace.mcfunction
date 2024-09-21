loot replace entity @s armor.head loot stellarity:pandoras_barrel/helmet
execute if predicate stellarity:items/pandoras_box_has_no_helmet run loot replace entity @s armor.head loot stellarity:pandoras_barrel/helmet_generic

execute store result score @s stellarity.items.pandoras_barrel.summon_id run data get entity @s ArmorItems[3].tag.AttributeModifiers[0].Amount 1

## Debug message, uncomment when needed
#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.pandoras_barrel.summon_id"}}
