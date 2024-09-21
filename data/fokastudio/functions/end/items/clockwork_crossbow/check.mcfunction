execute store result score @s foka.items.clockwork_crossbow.arrow_amount run clear @s #minecraft:arrows 0
execute if score @s foka.items.clockwork_crossbow.arrow_amount matches 1.. run function fokastudio:end/items/clockwork_crossbow/replace_item
