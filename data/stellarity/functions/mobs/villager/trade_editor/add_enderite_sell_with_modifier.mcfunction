$data modify storage stellarity:temp villager_trades append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:amethyst_shard",Count:$(buy_count),tag: {stellarity.special_item:"enderite_shard",CustomModelData:90001,display:{Lore:['{"text":""}','{"italic":false,"color":"#EEEEEE","translate":"stellarity.items.materials.enderite_shard.description","fallback":"Contains a fraction of the unknown"}','{"text":""}','{"italic":true,"color":"#CC26FF","translate":"Stellarity"}'],Name:'{"italic":false,"color":"light_purple","translate":"stellarity.items.materials.enderite_shard","fallback":"Enderite Shard"}'}}},buyB:{id:"minecraft:$(buy_b_id)",Count:$(buy_b_count)},sell:{id:"minecraft:stone",Count:1}}

$item replace entity @s villager.0 with minecraft:$(sell) $(sell_count)
$item modify entity @s villager.0 $(modifier)
data modify storage stellarity:temp villager_trades[-1].sell set from entity @s Inventory[0]
