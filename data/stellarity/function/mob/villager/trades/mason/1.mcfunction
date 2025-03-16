data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell {xp:2,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"purpur_block",sell_count:4}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell {xp:3,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"end_stone_bricks",sell_count:4}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades