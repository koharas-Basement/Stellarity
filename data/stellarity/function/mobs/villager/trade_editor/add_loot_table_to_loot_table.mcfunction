$data modify storage stellarity:temp villager_trades append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:stone",count:$(buy_a_count)},buyB:{id:"minecraft:amethyst_shard",count:$(buy_b_count),components:{"minecraft:custom_data":{stellarity.special_item:"enderite_shard"},"minecraft:custom_model_data":90001,"minecraft:item_name":'{"fallback":"Enderite Shard","translate":"stellarity.items.materials.enderite_shard"}',"minecraft:lore":['""','{"color":"#EEEEEE","fallback":"Contains a fraction of the unknown","italic":false,"translate":"stellarity.items.materials.enderite_shard.description"}','""','{"color":"#CC26FF","italic":true,"translate":"Stellarity"}'],"minecraft:rarity":"uncommon"}},sell:{id:"minecraft:stone",count:$(sell_count)}}

$loot replace entity @s villager.0 loot $(loot_table)
data modify storage stellarity:temp villager_trades[-1].sell.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].sell.components set from entity @s Inventory[0].components


$loot replace entity @s villager.0 loot $(loot_table_2)
data modify storage stellarity:temp villager_trades[-1].sell.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].sell.components set from entity @s Inventory[0].components
