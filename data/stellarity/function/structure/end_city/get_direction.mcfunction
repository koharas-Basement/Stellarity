execute if block ~ ~ ~ command_block[facing=east] run data modify storage stellarity:temp end_city.post_gen.direction set value "clockwise_90"
execute if block ~ ~ ~ command_block[facing=west] run data modify storage stellarity:temp end_city.post_gen.direction set value "counterclockwise_90"
execute if block ~ ~ ~ command_block[facing=south] run data modify storage stellarity:temp end_city.post_gen.direction set value "180"
execute if block ~ ~ ~ command_block[facing=north] run data modify storage stellarity:temp end_city.post_gen.direction set value "none"
