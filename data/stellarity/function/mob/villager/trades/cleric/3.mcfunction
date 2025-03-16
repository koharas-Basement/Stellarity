data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:3,price_multiplier:0.05,loot_table:"stellarity:village/trades/cleric/3/1",buy_a_count:7,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,sell:"glowstone",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:5}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
