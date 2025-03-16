data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:2,price_multiplier:0.2,buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell:"book",sell_count:1,modifier:"stellarity:village/trades/fisherman/4/1/1",xp:10}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mob/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:2,price_multiplier:0.2,buy_a_count:13,buy_b_id:"air",buy_b_count:1,sell:"book",sell_count:1,modifier:"stellarity:village/trades/fisherman/4/1/2",xp:10}

# Second Trade
function stellarity:mob/villager/trade_editor/add_from_loot_table {max_uses:6,xp:15,price_multiplier:0.2,buy_a_count:14,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/trinket/chorus_bait",sell_count:1}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades