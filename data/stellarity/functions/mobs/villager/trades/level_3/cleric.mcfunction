data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:4,price_multiplier:0.05,loot_table:"stellarity:items/banners/brewing_stand",buy_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:20}

function stellarity:mobs/villager/trade_editor/add_enderite_sell_reverse_order {max_uses:12,price_multiplier:0.05,sell:"glowstone",buy_count:1,buy_b_id:"shroomlight",buy_b_count:4,sell_count:4,xp:12}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
