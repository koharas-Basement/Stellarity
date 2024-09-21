# Caching for some micro-optimizations
scoreboard players set #in_liquid stellarity.misc 0
execute if block ^ ^ ^ #kohara:liquids run scoreboard players set #in_liquid stellarity.misc 1

execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=!stellarity.natures_wrath.spirit.ocean,tag=!stellarity.natures_wrath.spirit.mountain,tag=!stellarity.natures_wrath.spirit.forest,tag=!stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.85 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=!stellarity.natures_wrath.spirit.ocean,tag=!stellarity.natures_wrath.spirit.sculk,tag=!stellarity.natures_wrath.spirit.snow,tag=!stellarity.natures_wrath.spirit.mountain,tag=!stellarity.natures_wrath.spirit.forest,tag=!stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.425 ~ ~

# Mountain Spirit moves 30% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.mountain] ^ ^ ^1.105 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.mountain] ^ ^ ^0.5525 ~ ~

# Forest Spirit moves 10% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.forest] ^ ^ ^0.935 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.forest] ^ ^ ^0.4675 ~ ~

# Jungle Spirit moves 15% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.9775 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.48875 ~ ~

# Sculk and Snow Spirits move 10% slower
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.snow] ^ ^ ^0.765 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.snow] ^ ^ ^0.3825 ~ ~
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.sculk] ^ ^ ^0.765 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.sculk] ^ ^ ^0.3825 ~ ~


# Ocean Spirit ignores liquid movement penalty
# but moves 10% slower
tp @s[tag=stellarity.natures_wrath.spirit.ocean] ^ ^ ^0.765 ~ ~

# Homing effect
# stellarity.misc3 is homing duraiton
# Homing activates after 0.25s (5 ticks)
execute if score @s stellarity.misc matches 5.. if score @s stellarity.misc <= @s stellarity.misc3 facing entity @e[type=!#kohara:invalid_targets_with_player,type=!wolf,type=!cat,limit=1,sort=nearest,tag=stellarity.natures_wrath.homing_target] eyes anchored eyes positioned ^ ^ ^1.6 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~

execute if score #in_liquid stellarity.misc matches 1 run particle minecraft:bubble ~ ~ ~ 0.2 0.2 0.2 0 2 force
