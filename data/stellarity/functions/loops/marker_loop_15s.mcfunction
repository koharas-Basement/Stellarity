# End Portal noises
execute if entity @s[tag=stellarity.end_portal] run function stellarity:sfx/end_portal_animation/ambient_sounds

scoreboard players reset @s stellarity.misc.loop.15s
