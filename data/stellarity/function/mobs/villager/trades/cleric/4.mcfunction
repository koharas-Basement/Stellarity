data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:10,price_multiplier:0.05,buy_a_id:"glass_bottle",buy_a_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:20}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"ender_pearl",buy_a_count:16,buy_b_id:"ender_pearl",buy_b_count:16,sell_count:1,xp:5}


# Second Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:3,price_multiplier:0.2,loot_table:"stellarity:villager/cleric/lvl4",buy_a_count:7,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:15}
# ^ The Strength/Resistance Potions from the loot Table


data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
