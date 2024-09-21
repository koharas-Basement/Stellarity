data remove storage stellarity:temp villager_trades
data modify storage stellarity:temp villager_trades set from entity @s Offers.Recipes

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]


# Randomly trimmed armor
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:8,max_uses:6,price_multiplier:0.2,buy_count:7,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"iron_leggings",modifier:"stellarity:village/armorer_iron_armor"}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_enderite_sell_with_modifier {xp:8,max_uses:6,price_multiplier:0.2,buy_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"iron_boots",modifier:"stellarity:village/armorer_iron_armor"}

# Hallowed Ingot or Chorus Plating
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
	function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:8,price_multiplier:0.2,loot_table:"stellarity:items/materials/hallowed_ingot",buy_count:5,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

execute if score #trade stellarity.misc matches 2 run \
	function stellarity:mobs/villager/trade_editor/add_from_loot_table {max_uses:8,price_multiplier:0.2,loot_table:"stellarity:items/materials/chorus_plating",buy_count:5,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades
