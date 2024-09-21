execute as @a at @s run function fokastudio:end/utils/get_moving

execute as @a if data entity @s Inventory[].tag.foka_durability.enabled at @s run function fokastudio:end/utils/custom_durability/handle_durability
