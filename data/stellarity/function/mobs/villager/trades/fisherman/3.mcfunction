data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:4,price_multiplier:0.2,buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell:"tadpole_bucket",sell_count:1,xp:15}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:4,price_multiplier:0.2,buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell:"axolotl_bucket",sell_count:1,xp:15}

execute if score #trade stellarity.misc matches 3 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:4,price_multiplier:0.2,buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell:"tropical_fish_bucket",sell_count:1,xp:15}


# Second Trade
# I won't say that anymore...

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades