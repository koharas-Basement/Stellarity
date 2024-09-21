# Makes you immune to DoT debuffs and provides wide array of buffs in The End
# Pretty overpowered, will rebalance it by changing the Dragon fight to be
# FAAAAAAAAAR more challenging tho B)
effect clear @s poison
effect clear @s wither

effect give @s regeneration 1 0 true
effect give @s health_boost 1 1 true

effect give @s speed 1 0 true
execute unless predicate fokastudio:end/utils/player/is_sneaking run effect give @s slow_falling 1 0 true

# Effect does not end instantly, and that is sometimes annoying
execute if predicate fokastudio:end/utils/player/is_sneaking run effect clear @s slow_falling
