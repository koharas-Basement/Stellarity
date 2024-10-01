data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:2,price_multiplier:0.2,loot_table:"stellarity:villager/cleric/lvl5",buy_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:25} # The Lifeforce/Red Potion Loot Table


# Second Trade
# Non-Existent -SkyKing_PX

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades