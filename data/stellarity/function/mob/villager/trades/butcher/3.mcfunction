data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

function stellarity:mob/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:14,price_multiplier:0.05,loot_table:"stellarity:item/food/shulker_body",buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:12}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
