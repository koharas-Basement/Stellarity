data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"ender_pearl",buy_a_count:16,buy_b_id:"ender_pearl",buy_b_count:16,sell_count:1,xp:6}

# Second Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:3,price_multiplier:0.2,loot_table:"stellarity:village/trades/cleric/4/2",buy_a_count:7,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:15}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
