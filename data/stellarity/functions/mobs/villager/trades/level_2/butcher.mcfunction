data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# Coal, Charcoal
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_id:"coal",buy_count:18,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_id:"charcoal",buy_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

# Cooked Chicken, Cooked Porkchop
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,sell:"cooked_porkchop",buy_count:1,buy_b_id:"air",buy_b_count:1,sell_count:3,xp:5}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,sell:"cooked_chicken",buy_count:1,buy_b_id:"air",buy_b_count:1,sell_count:4,xp:5}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
