data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

# First Trade
execute store result score #trade stellarity.misc run random value 1..5

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_id:"ender_pearl",buy_count:8,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,sell:"phantom_membrane",buy_count:16,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}

execute if score #trade stellarity.misc matches 3 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,sell:"bone",buy_count:28,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 4 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,sell:"rotten_flesh",buy_count:40,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}


# Second Trade
execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:16,price_multiplier:0.05,sell:"redstone",buy_count:1,buy_b_id:"air",buy_b_count:1,sell_count:4,xp:1}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,sell:"blaze_rod",buy_count:2,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}


data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
