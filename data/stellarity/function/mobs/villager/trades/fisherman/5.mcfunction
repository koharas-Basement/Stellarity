data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

data remove storage stellarity:temp villager_trades[-1]
data remove storage stellarity:temp villager_trades[-1]

# First Trade
execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
    function

# Second Trade
execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
    function

data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades