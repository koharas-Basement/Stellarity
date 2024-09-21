tag @s remove stellarity.end_portal_animation.check_schedule

# Whether to continue checks
# Didn't want to make an extra scoreboard just for that...
scoreboard players set @s stellarity.misc 0

execute if block ~1 ~ ~ end_portal run scoreboard players set @s stellarity.misc 1
execute if block ~ ~ ~1 end_portal run scoreboard players set @s stellarity.misc 1
execute if block ~-1 ~ ~ end_portal run scoreboard players set @s stellarity.misc 1
execute if block ~ ~ ~-1 end_portal run scoreboard players set @s stellarity.misc 1

execute if score @s stellarity.misc matches 0 run kill @s


execute if score @s stellarity.misc matches 1 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace end_portal
execute if score @s stellarity.misc matches 1 run function stellarity:sfx/end_portal_animation/checks/frame_position
