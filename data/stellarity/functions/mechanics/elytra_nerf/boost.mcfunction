data modify storage stellarity:temp elytra_nerf.player_data set from entity @s
execute store result score #damage stellarity.misc run data get storage stellarity:temp elytra_nerf.player_data.Inventory[{Slot:102b}].tag.Damage 
execute unless score #damage stellarity.misc matches ..2147483647 run scoreboard players set #damage stellarity.misc 0

execute if score @s kohara.used_firework matches 1.. run scoreboard players set #temp stellarity.misc 6
execute if score @s kohara.thrown_trident matches 1.. run function stellarity:mechanics/elytra_nerf/trident

execute store result score #unbreaking stellarity.misc run data get storage stellarity:temp elytra_nerf.player_data.Inventory[{Slot:102b}].tag.Enchantments.[{id:"minecraft:unbreaking"}].lvl 1
execute if score #unbreaking stellarity.misc matches 1.. run function stellarity:mechanics/elytra_nerf/unbreaking

scoreboard players operation #damage stellarity.misc += #temp stellarity.misc
execute if score #damage stellarity.misc matches 431.. run scoreboard players set #damage stellarity.misc 430

execute store result storage stellarity:temp elytra_nerf.damage int 1 run scoreboard players get #damage stellarity.misc

item modify entity @s armor.chest stellarity:elytra_apply_damage
