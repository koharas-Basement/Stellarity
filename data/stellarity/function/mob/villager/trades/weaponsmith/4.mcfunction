data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {xp:18,max_uses:3,price_multiplier:0.05,buy_a_count:32,buy_b_id:"purpur_block",buy_b_count:24,loot_table:"stellarity:item/material/enderite_smithing_template",sell_count:1}

# Second Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:19,buy_b_id:"air",buy_b_count:1,sell:"diamond_sword",sell_count:1,modifier:"stellarity:village/trades/toolsmith/4/2"}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades