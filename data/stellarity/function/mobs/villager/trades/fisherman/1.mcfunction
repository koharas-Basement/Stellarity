data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

# First Trade
execute store result score #trade stellarity.misc run random value 1..4

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:8,xp:3,price_multiplier:0.05,buy_a_id:"string",buy_a_count:32,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
    function idk
    # Kohara, you have to do this shit: "Any fish obtained by void fishing that doesn’t belong to the biome the fisherman is located at (he can just fish them up yk) could be traded for enderite shards"

execute if score #trade stellarity.misc matches 3 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,xp:2,price_multiplier:0.05,buy_a_id:"tropical_fish",buy_a_count:8,buy_b_id:"air",buy_b_count:1,sell_count:1}


execute if score #trade stellarity.misc matches 4 run \
    function

# Second Trade



data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades