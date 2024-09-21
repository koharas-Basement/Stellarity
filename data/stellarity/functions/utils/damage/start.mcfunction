scoreboard players set #should_continue stellarity.misc 1

execute store result score #iframes stellarity.misc run data get entity @s HurtTime 1
execute if score #ignore_iframes stellarity.misc matches 0 if score #iframes stellarity.misc matches 1.. run scoreboard players set #should_continue stellarity.misc 0
execute if entity @s[type=#stellarity:invalid_targets] run scoreboard players set #should_continue stellarity.misc 0
execute if entity @s[type=player] run function stellarity:utils/damage/player_continue_checks

execute if score #should_continue stellarity.misc matches 1 run function stellarity:utils/damage/calculate
