data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:2,price_multiplier:0.05,buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell:"fishing_rod",sell_count:1,modifier:"stellarity:village/trades/fisherman/3/1",xp:4}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:8,xp:4,price_multiplier:0.05,loot_table:"stellarity:village/trades/fisherman/3/2",buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1} 

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades