data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:3,price_multiplier:0.05,loot_table:"stellarity:villager/cleric/lvl3",buy_count:7,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10} # The Healing/Speed/Leaping Potions from the Trades-Document that you wanted to add Kohara.

# Second Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell_reverse_order {max_uses:12,price_multiplier:0.05,sell:"glowstone",buy_count:1,buy_b_id:"shroomlight",buy_b_count:4,sell_count:4,xp:12}

execute if score #trade stellarity.misc matches 2 run \
    function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,sell:"glowstone",buy_count:2,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:5}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
