data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy {xp:3,max_uses:8,price_multiplier:0.05,buy_a_id:"leather",buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy {xp:3,max_uses:6,price_multiplier:0.05,buy_a_id:"flint",buy_a_count:16,buy_b_id:"air",buy_b_count:1,sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades