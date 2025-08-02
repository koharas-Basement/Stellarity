
# First Trade
  execute store result score @s stellarity.random_number run random value 1..2

execute if score @s stellarity.random_number matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:4,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"ink_sac",sell_count:2}

execute if score @s stellarity.random_number matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:5,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"glow_ink_sac",sell_count:1}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:3,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"glass",sell_count:6}

data modify entity @s Offers.Recipes set from entity @s data."stellarity:villager_trades"
