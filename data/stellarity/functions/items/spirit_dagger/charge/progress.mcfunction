execute unless score @s stellarity.items.spirit_dagger.consume_time matches 10.. run scoreboard players add @s stellarity.items.spirit_dagger.consume_time 1
scoreboard players set @s stellarity.items.spirit_dagger.until_consume_reset 30

title @s actionbar [{"score":{"name": "@s","objective": "stellarity.items.spirit_dagger.consume_time"},"color":"#8DE1E4"},{"text":"/","color":"#EEEEEE"},{"text":"7","color":"#C781E6"}]

title @s actionbar [{"text":"•","color":"#EEEEEE"},{"text":" 🗡 ","color":"#8DE1E4"},{"score":{"name": "@s","objective": "stellarity.items.spirit_dagger.consume_time"},"color":"#8DE1E4"},{"text":"/","color":"#EEEEEE"},{"text":"10","color":"#C781E6"},{"text":" 🗡 ","color":"#C781E6"},{"text":"•","color":"#EEEEEE"}]

execute if score @s[name="kohara_"] stellarity.items.spirit_dagger.consume_time matches 1 run playsound stellarity:item.spirit_dagger.charge_kohara player @a[distance=0..] ~ ~ ~ 1 1
execute if score @s[name=!"kohara_"] stellarity.items.spirit_dagger.consume_time matches 1 run playsound stellarity:item.spirit_dagger.charge player @a[distance=0..] ~ ~ ~ 1 1

execute if score @s stellarity.items.spirit_dagger.consume_time matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.5
execute if score @s stellarity.items.spirit_dagger.consume_time matches 2 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.6
execute if score @s stellarity.items.spirit_dagger.consume_time matches 3 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.7
execute if score @s stellarity.items.spirit_dagger.consume_time matches 4 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.8
execute if score @s stellarity.items.spirit_dagger.consume_time matches 5 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 0.9
execute if score @s stellarity.items.spirit_dagger.consume_time matches 6 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1
execute if score @s stellarity.items.spirit_dagger.consume_time matches 7 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.2
execute if score @s stellarity.items.spirit_dagger.consume_time matches 8 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.3
execute if score @s stellarity.items.spirit_dagger.consume_time matches 9 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.1 1.4

execute if score @s stellarity.items.spirit_dagger.consume_time matches 10 anchored eyes positioned ^ ^ ^ anchored feet run function stellarity:items/spirit_dagger/raycast/start_ray
