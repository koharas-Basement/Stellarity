data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_id:"ender_pearl",buy_count:8,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:16,price_multiplier:0.05,sell:"redstone",buy_count:1,buy_b_id:"air",buy_b_count:1,sell_count:4,xp:1}
	
data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
