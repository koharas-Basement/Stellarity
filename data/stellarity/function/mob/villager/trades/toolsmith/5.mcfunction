data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]


# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {xp:25,max_uses:2,price_multiplier:0.2,buy_a_count:21,buy_b_id:"air",buy_b_count:1,sell:"diamond_axe",sell_count:1,modifier:"stellarity:village/trades/toolsmith/5/1/1"}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {xp:25,max_uses:2,price_multiplier:0.2,buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell:"diamond_pickaxe",sell_count:1,modifier:"stellarity:village/trades/toolsmith/5/1/2"}

# Second Trade
# No second trade

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades