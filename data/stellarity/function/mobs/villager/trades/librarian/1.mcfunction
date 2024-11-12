data merge entity @s {Offers:{Recipes:[]}}
data remove storage stellarity:temp villager_trades

# First Trade
execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
    function

# Second Trade


data modify entity @s Offers.Recipes set from storage stellarity:temp villager_trades