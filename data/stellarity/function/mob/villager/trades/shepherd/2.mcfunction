data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {xp:4,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/dye",sell_count:3}

# Second Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {xp:4,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/wool",sell_count:2}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades