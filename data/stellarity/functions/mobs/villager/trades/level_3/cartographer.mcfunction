data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]

function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,sell:"item_frame",buy_count:2,buy_b_id:"air",buy_b_count:1,sell_count:4,xp:12}

function stellarity:mobs/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:1,price_multiplier:0.2,loot_table:"stellarity:items/explorer_maps/chapel_of_light",buy_count:50,buy_b_id:"map",buy_b_count:1,sell_count:1,xp:50}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
