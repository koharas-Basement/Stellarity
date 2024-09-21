data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:15,max_uses:3,price_multiplier:0.2,buy_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"diamond_helmet",modifier:"stellarity:village/armorer_diamond_armor"}

function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:15,max_uses:3,price_multiplier:0.2,buy_count:30,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"diamond_chestplate",modifier:"stellarity:village/armorer_diamond_armor"}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
