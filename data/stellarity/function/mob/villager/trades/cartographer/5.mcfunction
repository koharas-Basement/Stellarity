function stellarity:mob/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,sell:"mojang_banner_pattern",buy_a_count:18,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:30}

data modify entity @s Offers.Recipes set from entity @s data."stellarity:villager_trades"
