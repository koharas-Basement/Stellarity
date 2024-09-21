data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]

function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:14,price_multiplier:0.05,buy_id:"glass_pane",buy_count:14,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:8}

function stellarity:mobs/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:1,price_multiplier:0.2,loot_table:"stellarity:items/explorer_maps/end_city",buy_count:40,buy_b_id:"map",buy_b_count:1,sell_count:1,xp:40}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
