execute unless score @s stellarity.items.spirit_dagger.consume_time matches 7.. run scoreboard players add @s stellarity.items.spirit_dagger.consume_time 1
scoreboard players set @s stellarity.items.spirit_dagger.until_consume_reset 61

title @s actionbar [{"score":{"name": "@s","objective": "stellarity.items.spirit_dagger.consume_time"},"color":"#8DE1E4"},{"text":"/","color":"#EEEEEE"},{"text":"7","color":"#C781E6"}]

execute if score @s stellarity.items.spirit_dagger.consume_time matches 1 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.5
execute if score @s stellarity.items.spirit_dagger.consume_time matches 2 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.65
execute if score @s stellarity.items.spirit_dagger.consume_time matches 3 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.9
execute if score @s stellarity.items.spirit_dagger.consume_time matches 4 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.05
execute if score @s stellarity.items.spirit_dagger.consume_time matches 5 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.2
execute if score @s stellarity.items.spirit_dagger.consume_time matches 6 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.35
execute if score @s stellarity.items.spirit_dagger.consume_time matches 7 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.5

execute if score @s stellarity.items.spirit_dagger.consume_time matches 7 as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function stellarity:items/spirit_dagger/raycast/start_ray
