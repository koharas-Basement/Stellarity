# Caching for some micro-optimizations
scoreboard players set #in_liquid stellarity.misc 0
execute if block ^ ^ ^ #stellarity:liquids run scoreboard players set #in_liquid stellarity.misc 1

execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=!stellarity.natures_wrath.spirit.ocean,tag=!stellarity.natures_wrath.spirit.mountains,tag=!stellarity.natures_wrath.spirit.forest,tag=!stellarity.natures_wrath.spirit.jungle] ^ ^ ^1 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=!stellarity.natures_wrath.spirit.ocean,tag=!stellarity.natures_wrath.spirit.mountains,tag=!stellarity.natures_wrath.spirit.forest,tag=!stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.5 ~ ~

# Mountain Spirit moves 30% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.mountains] ^ ^ ^1.3 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.mountains] ^ ^ ^0.65 ~ ~

# Forest Spirit moves 10% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.forest] ^ ^ ^1.1 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.forest] ^ ^ ^0.55 ~ ~

# Jungle Spirit moves 15% quicker
execute if score #in_liquid stellarity.misc matches 0 run tp @s[tag=stellarity.natures_wrath.spirit.jungle] ^ ^ ^1.15 ~ ~
execute if score #in_liquid stellarity.misc matches 1 run tp @s[tag=stellarity.natures_wrath.spirit.jungle] ^ ^ ^0.575 ~ ~


# Ocean Spirit ignores liquid movement penalty
# But moves 10% slower :(
tp @s[tag=stellarity.natures_wrath.spirit.ocean] ^ ^ ^0.9 ~ ~

