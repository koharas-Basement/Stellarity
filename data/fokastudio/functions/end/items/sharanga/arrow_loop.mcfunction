particle minecraft:dust 1.0 0.9 0.4 0.6 ~ ~ ~ 0.22 0.22 0.22 0 15 force

scoreboard players add @s foka.items.sharanga.arrow_age 1
execute if data entity @s inBlockState run function fokastudio:end/items/sharanga/arrow_explode
execute if score @s foka.items.sharanga.arrow_age matches 20.. run function fokastudio:end/items/sharanga/arrow_explode
