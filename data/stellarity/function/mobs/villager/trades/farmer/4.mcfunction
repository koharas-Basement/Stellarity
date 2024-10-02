data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:8,xp:15,price_multiplier:0.2,buy_a_count:3,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:items/food/chorus_juice",sell_count:1}

# Second Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:8,xp:15,price_multiplier:0.2,buy_a_count:5,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:items/food/grilled_chorus_fruit",sell_count:1}
# IMPORTANT: The Loot Table "grilled_chorus_fruit" is not defined yet!

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades