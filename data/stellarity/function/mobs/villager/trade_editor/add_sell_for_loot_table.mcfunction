$data modify storage stellarity:temp villager_trades append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:stone",count:$(buy_a_count)},buyB:{id:"minecraft:$(buy_b_id)",count:$(buy_b_count)},sell:{id:"minecraft:$(sell)",count:$(sell_count)}}

$loot replace entity @s villager.0 loot $(loot_table)
data modify storage stellarity:temp villager_trades[-1].sell.id set from entity @s Inventory[0].id
data modify storage stellarity:temp villager_trades[-1].sell.components set from entity @s Inventory[0].components
