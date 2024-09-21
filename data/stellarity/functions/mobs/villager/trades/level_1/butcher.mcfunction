data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:14,price_multiplier:0.05,buy_id:"chicken",buy_count:8,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:14,price_multiplier:0.05,buy_id:"porkchop",buy_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 3 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:14,price_multiplier:0.05,buy_id:"rabbit",buy_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:10,price_multiplier:0.05,sell:"rabbit_stew",buy_count:1,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:1}
	
data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
