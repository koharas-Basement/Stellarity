data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_id:"paper",buy_count:28,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:10,price_multiplier:0.05,sell:"map",buy_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:1}
	
data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
