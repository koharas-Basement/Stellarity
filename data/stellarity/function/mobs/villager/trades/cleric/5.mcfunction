data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:2,price_multiplier:0.2,loot_table:"stellarity:villager/cleric/5/1",buy_a_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:25}

# Second Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:4,xp:12,price_multiplier:0.2,buy_a_id:"ender_chest",buy_a_count:1,buy_b_count:18,loot_table:"stellarity:items/pandoras_barrel",sell_count:2}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades