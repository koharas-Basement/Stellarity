data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]

function stellarity:mob/villager/trade_editor/add_from_loot_table {xp:50,max_uses:2,price_multiplier:0.2,buy_a_count:44,buy_b_id:"air",buy_b_count:1,sell_count:1,loot_table:"stellarity:item/food/shepherds_pie"}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
