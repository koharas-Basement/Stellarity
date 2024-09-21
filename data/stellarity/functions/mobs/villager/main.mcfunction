data modify storage stellarity:temp villager_data set from entity @s VillagerData

execute unless data storage stellarity:temp {villager_data:{profession:"minecraft:none"}} if entity @s[tag=!stellarity.villager.employed] run function stellarity:mobs/villager/mark_as_employed

execute if data storage stellarity:temp {villager_data:{profession:"minecraft:none"}} if entity @s[tag=stellarity.villager.employed] run function stellarity:mobs/villager/unemploy

execute if data storage stellarity:temp {villager_data:{level:2}} if entity @s[tag=!stellarity.villager.level_2] run function stellarity:mobs/villager/update_trades_level_2
execute if data storage stellarity:temp {villager_data:{level:3}} if entity @s[tag=!stellarity.villager.level_3] run function stellarity:mobs/villager/update_trades_level_3
execute if data storage stellarity:temp {villager_data:{level:4}} if entity @s[tag=!stellarity.villager.level_4] run function stellarity:mobs/villager/update_trades_level_4
execute if data storage stellarity:temp {villager_data:{level:5}} if entity @s[tag=!stellarity.villager.level_5] run function stellarity:mobs/villager/update_trades_level_5
