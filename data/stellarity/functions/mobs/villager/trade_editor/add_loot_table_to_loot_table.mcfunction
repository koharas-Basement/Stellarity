$data modify storage stellarity:temp villager_trades append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:stone",Count:$(buy_count)},buyB:{id:"minecraft:amethyst_shard",Count:$(buy_b_count),tag:{stellarity.special_item:"enderite_shard",CustomModelData:90001,display:{Lore:['{"text":""}','{"italic":false,"color":"#EEEEEE","translate":"stellarity.items.materials.enderite_shard.description","fallback":"Contains a fraction of the unknown"}','{"text":""}','{"italic":true,"color":"#CC26FF","translate":"Stellarity"}'],Name:'{"italic":false,"color":"light_purple","translate":"stellarity.items.materials.enderite_shard","fallback":"Enderite Shard"}'}}},sell:{id:"minecraft:stone",Count:$(sell_count)}}

$loot replace entity @s villager.0 loot $(loot_table)
data modify storage stellarity:temp villager_trades[-1].buy.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @s Inventory[0].tag

$loot replace entity @s villager.0 loot $(loot_table)
data modify storage stellarity:temp villager_trades[-1].sell.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @s Inventory[0].tag
