data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# Enderite Smithing Template
function stellarity:mobs/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:2,price_multiplier:0.2,loot_table:"stellarity:items/materials/enderite_smithing_template",buy_count:32,buy_b_id:"purpur_block",buy_b_count:24,sell_count:1,xp:10}

function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:15,max_uses:3,price_multiplier:0.2,buy_count:27,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"diamond_leggings",modifier:"stellarity:village/armorer_diamond_armor"}

function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:15,max_uses:3,price_multiplier:0.2,buy_count:21,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"diamond_boots",modifier:"stellarity:village/armorer_diamond_armor"}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
