# Caching for some micro-optimizations
scoreboard players set #in_liquid stellarity.misc 0
execute if block ^ ^ ^ #kohara:liquids run scoreboard players set #in_liquid stellarity.misc 1

execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=!stellarity.natures_wrath.spirit.ocean,tag=!stellarity.natures_wrath.spirit.mountain,tag=!stellarity.natures_wrath.spirit.forest,tag=!stellarity.natures_wrath.spirit.jungle,tag=!stellarity.natures_wrath.spirit.hallowed] ^ ^ ^0.85 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=!stellarity.natures_wrath.spirit.ocean,tag=!stellarity.natures_wrath.spirit.mountain,tag=!stellarity.natures_wrath.spirit.forest,tag=!stellarity.natures_wrath.spirit.jungle,tag=!stellarity.natures_wrath.spirit.hallowed] ^ ^ ^0.425 ~ ~

## Extra speed multipliers
# Mountain Spirit moves 40% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.mountain] ^ ^ ^1.19 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.mountain] ^ ^ ^0.595 ~ ~
# Forest Spirit moves 15% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.forest] ^ ^ ^0.9775 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.forest] ^ ^ ^0.48875 ~ ~
# Jungle Spirit moves 25% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.jungle] ^ ^ ^1.0625 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.53125 ~ ~
# Snow Spirit moves 10% slower
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.snow] ^ ^ ^0.765 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.snow] ^ ^ ^0.3825 ~ ~
# Sculk Spirit moves 20% slower
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.sculk] ^ ^ ^0.68 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.sculk] ^ ^ ^0.34 ~ ~
# Hallowed Spirit moves 10% faster
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.hallowed] ^ ^ ^0.935 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.hallowed] ^ ^ ^0.4675 ~ ~
# Ocean Spirit ignores liquid movement penalty but moves 10% slower
tp @s[tag=stellarity.natures_wrath.spirit.ocean] ^ ^ ^0.765 ~ ~

# Homing effect
# stellarity.misc3 is homing duraiton
# Homing activates after 0.25s (5 ticks)
execute if score @s stellarity.misc matches 5.. if score @s stellarity.misc <= @s stellarity.misc3 facing entity @e[type=!#kohara:invalid_targets_with_player,type=!wolf,type=!cat,limit=1,sort=nearest,tag=stellarity.natures_wrath.homing_target] eyes anchored eyes positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~

execute if score #in_liquid stellarity.misc matches 1 run particle minecraft:bubble ~ ~ ~ 0.2 0.2 0.2 0 2 force
