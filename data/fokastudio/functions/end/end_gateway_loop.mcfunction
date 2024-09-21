# Structures in Far End could generate inside blocks in FSEE
# It was prob bcs both packs use different height ranges for terraing height
# I made it so they start generating at Y 256 and slowly descend to 
# the lowest solid block/lowest fluid at the given XZ coordinates
# Also it prevents generation of Gateways under Y 80

execute as @e[type=marker,tag=foka.gateway_utility] at @s if block ~ ~-20 ~ air run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=foka.gateway_utility] at @s unless predicate fokastudio:end/utils/gateway_bounds run function far_end:structures/exit_portal/gateway/generate
execute as @e[type=marker,tag=foka.gateway_utility] at @s unless block ~ ~-13 ~ air run function far_end:structures/exit_portal/gateway/generate
