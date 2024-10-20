data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade

function stellarity:mobs/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:8,xp:4,price_multiplier:0.05,loot_table:"stellarity:villager/fisherman/lvl2",buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
execute store result score #trade stellarity.misc run random value 1..4

# 2 ES + Oak/Spruce/Birch/Cherry Log = Soul Campfire
execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:6,price_multiplier:0.05,buy_a_count:2,buy_b_id:"oak_log",buy_b_count:2,sell:"soul_campfire",sell_count:1,xp:5}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:6,price_multiplier:0.05,buy_a_count:2,buy_b_id:"spruce_log",buy_b_count:2,sell:"soul_campfire",sell_count:1,xp:5}

execute if score #trade stellarity.misc matches 3 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:6,price_multiplier:0.05,buy_a_count:2,buy_b_id:"birch_log",buy_b_count:2,sell:"soul_campfire",sell_count:1,xp:5}

execute if score #trade stellarity.misc matches 4 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:6,price_multiplier:0.05,buy_a_count:2,buy_b_id:"cherry_log",buy_b_count:2,sell:"soul_campfire",sell_count:1,xp:5}


data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades