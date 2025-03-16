data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell_reverse_order_with_modifier {xp:8,max_uses:6,price_multiplier:0.05,buy_a_id:"arrow",buy_a_count:8,buy_b_count:2,sell:"tipped_arrow",sell_count:8,modifier:"stellarity:village/trades/fletcher/4/1"}

# Second Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {xp:8,max_uses:8,price_multiplier:0.05,buy_a_id:"purpur_block",buy_a_count:24,buy_b_count:32,loot_table:"stellarity:item/material/enderite_smithing_template",sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades