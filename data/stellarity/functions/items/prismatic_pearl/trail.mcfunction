execute unless entity @s[tag=stellarity.items.prismatic_pearl.buffed_velocity] run function stellarity:items/prismatic_pearl/velocity

execute if entity @s[tag=stellarity.prismatic_pearl.bush] run function stellarity:items/prismatic_pearl/trail/bush
execute if entity @s[tag=!stellarity.prismatic_pearl.bush] run function stellarity:items/prismatic_pearl/trail/regular

# Starting count from 2nd tick of flight for the sake of being less obtrusive
scoreboard players add @s stellarity.misc 1
