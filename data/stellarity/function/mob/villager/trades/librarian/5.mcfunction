data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {xp:20,max_uses:1,price_multiplier:0.2,buy_a_id:"book",buy_a_count:1,buy_b_count:64,loot_table:"stellarity:village/trades/librarian/5/1",sell_count:1}

# Second Trade
# :(

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
