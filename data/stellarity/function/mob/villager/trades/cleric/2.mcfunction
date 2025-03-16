data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"gold_ingot",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:8}

# Second Trade
execute store result score #trades stellarity.misc run random value 1..2

execute if score #trades stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_enderite_sell {max_uses:10,price_multiplier:0.05,sell:"lapis_lazuli",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:3,xp:5}

execute if score #trades stellarity.misc matches 2 run \
    function stellarity:mob/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,sell:"nether_wart",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:2,xp:3}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
