data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:8,xp:15,price_multiplier:0.2,buy_a_count:3,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/chorus_juice",sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:6,xp:15,price_multiplier:0.2,buy_a_count:4,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/chorus_stew",sell_count:1}

# Second Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:8,xp:15,price_multiplier:0.2,buy_a_count:6,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/fried_chorus_fruit",sell_count:2}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades