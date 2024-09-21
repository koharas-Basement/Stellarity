data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]

function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,sell:"mojang_banner_pattern",buy_count:18,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:30}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
