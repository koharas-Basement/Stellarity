$data modify storage stellarity:temp villager_trades append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:stone",count:$(buy_a_count)},buyB:{id:"minecraft:amethyst_shard",count:$(buy_b_count),components:{"minecraft:item_name":"{\"italic\":false,\"color\":\"light_purple\",\"translate\":\"stellarity.items.materials.enderite_shard\",\"fallback\":\"Enderite Shard\"}","minecraft:lore":["{\"text\":\"\"}","{\"italic\":false,\"color\":\"#EEEEEE\",\"translate\":\"stellarity.items.materials.enderite_shard.description\",\"fallback\":\"Contains a fraction of the unknown\"}","{\"text\":\"\"}","{\"italic\":true,\"color\":\"#CC26FF\",\"translate\":\"Stellarity\"}"],"minecraft:custom_model_data":90001,"minecraft:custom_data":{stellarity.special_item:"enderite_shard"}}},sell:{id:"minecraft:stone",count:$(sell_count)}}

$loot replace entity @s villager.0 loot $(loot_table)
data modify storage stellarity:temp villager_trades[-1].buy.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @s Inventory[0].tag

$loot replace entity @s villager.0 loot $(loot_table_2)
data modify storage stellarity:temp villager_trades[-1].sell.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @s Inventory[0].tag
