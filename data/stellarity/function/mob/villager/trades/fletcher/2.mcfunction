data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy {max_uses:12,xp:2,price_multiplier:0.05,buy_a_id:"flint",buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:4,price_multiplier:0.05,buy_a_count:8,buy_b_id:"air",buy_b_count:1,sell:"bow",sell_count:1,modifier:"stellarity:village/trades/fletcher/2/2",xp:10}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades