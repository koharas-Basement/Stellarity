advancement revoke @s only fokastudio:end/events/eat_chorus_fruit

# Saturation
effect give @s saturation 1 1 true

# RNG
# This section causes a small delay, that's why Saturation is given earlier on
scoreboard players set in math 1
scoreboard players set in1 math 15
function math:rng/range

# Base tier effects
execute if score out math matches 1 as @s run effect give @s speed 6 0 false
execute if score out math matches 2 as @s run effect give @s jump_boost 7 0 false
execute if score out math matches 3 as @s run effect give @s regeneration 5 0 false
execute if score out math matches 4 as @s run effect give @s resistance 9 0 false
execute if score out math matches 5 as @s run effect give @s absorption 4 0 false

# Tier 2 effects
execute if score out math matches 6 as @s run effect give @s speed 4 1 false
execute if score out math matches 7 as @s run effect give @s jump_boost 6 1 false
execute if score out math matches 8 as @s run effect give @s regeneration 3 1 false
execute if score out math matches 9 as @s run effect give @s resistance 6 1 false
execute if score out math matches 10 as @s run effect give @s absorption 3 1 false

# Long effects
execute if score out math matches 11 as @s run effect give @s speed 10 0 false
execute if score out math matches 12 as @s run effect give @s jump_boost 17 0 false
execute if score out math matches 13 as @s run effect give @s regeneration 8 0 false
execute if score out math matches 14 as @s run effect give @s resistance 16 0 false
execute if score out math matches 15 as @s run effect give @s absorption 9 0 false
