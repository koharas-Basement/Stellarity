data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]


# First Trade
function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:21,buy_b_id:"air",buy_b_count:1,sell:"diamond_axe",sell_count:1,modifier:"stellarity:village/trades/toolsmith/5/1"}

# Second Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {xp:25,max_uses:1,price_multiplier:0.2,buy_a_id:"golden_sword",buy_a_count:1,buy_b_count:64,loot_table:"stellarity:item/stellar_striker",sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades