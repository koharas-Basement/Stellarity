data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell {xp:8,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"cauldron",sell_count:1}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy {xp:6,max_uses:8,price_multiplier:0.05,buy_a_id:"rabbit_hide",buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades