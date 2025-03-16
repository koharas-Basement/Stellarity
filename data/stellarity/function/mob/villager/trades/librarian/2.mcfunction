data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell {xp:4,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"lantern",sell_count:3}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell_reverse_order_with_modifier {xp:15,max_uses:3,price_multiplier:0.2,buy_a_id:"book",buy_a_count:1,buy_b_count:25,sell:"book",sell_count:1,modifier:"stellarity:village/trades/librarian/2/2"}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades