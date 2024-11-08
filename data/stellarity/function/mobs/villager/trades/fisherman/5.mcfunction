data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:3,price_multiplier:0.2,loot_table:"stellarity:items/food/fish/crystal_heartfish",buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell_count:6,xp:15}

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:2,xp:25,price_multiplier:0.2,buy_a_count:32,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:items/trinkets/tackle_bag",sell_count:1}

# Second Trade
# No trade :((

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades