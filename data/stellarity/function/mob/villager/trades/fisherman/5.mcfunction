data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:3,price_multiplier:0.2,loot_table:"stellarity:item/food/fish/crystal_heartfish",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:5,xp:15}

# Second Trade
# No trade :((

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
