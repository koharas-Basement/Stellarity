data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:3,xp:25,price_multiplier:0.2,buy_a_count:14,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/pho",sell_count:1}

# Second Trade - 20% Chance
execute store result score #trade stellarity.misc run random value 1..5

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:2,xp:50,price_multiplier:0.2,buy_a_id:"bread",buy_a_count:10,buy_b_count:64,loot_table:"stellarity:item/food/loaf_of_plenty",sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades