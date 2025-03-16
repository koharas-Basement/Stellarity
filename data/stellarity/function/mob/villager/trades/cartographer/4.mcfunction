data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

function stellarity:mob/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,sell:"glow_item_frame",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:2,xp:18}

function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:4,price_multiplier:0.05,loot_table:"stellarity:item/phantom_item_frame",buy_a_count:5,buy_b_id:"air",buy_b_count:1,sell_count:3,xp:20}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
