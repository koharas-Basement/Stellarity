data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:2,price_multiplier:0.2,loot_table:"stellarity:village/trades/cleric/5/1",buy_a_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:25}

# Second Trade
# No second trade
# Used to be a Pandora's Barrel

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades