data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# Diamond -> 2 Enderite Shards
function stellarity:mob/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"diamond",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:12}

# Shield -> Copper Elektra Shield
function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:2,xp:40,price_multiplier:0.2,buy_a_id:"shield",buy_a_count:1,buy_b_count:46,loot_table:"stellarity:item/trinket/copper_elektra_shield",sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
