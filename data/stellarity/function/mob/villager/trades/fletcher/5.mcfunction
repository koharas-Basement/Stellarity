data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {xp:25,max_uses:2,price_multiplier:0.2,buy_a_id:"bow",buy_a_count:1,buy_b_count:64,loot_table:"stellarity:item/sharanga",sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mob/villager/trade_editor/add_from_loot_table_reverse_order {xp:25,max_uses:2,price_multiplier:0.2,buy_a_id:"crossbow",buy_a_count:1,buy_b_count:64,loot_table:"stellarity:item/clockwork_crossbow",sell_count:1}

# Second Trade
# :(

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades