execute as @e[type=marker,tag=stellarity.end_portal] at @s run function stellarity:visuals/end_portal_animation/marker_loop
execute as @e[type=marker,tag=stellarity.end_portal_animation] at @s run function stellarity:visuals/end_portal_animation/animation/main

execute as @e[type=marker,tag=stellarity.altar_of_accursed,tag=stellarity.aota_activated] at @s run function stellarity:visuals/altar_of_the_accursed/loop
execute as @e[type=marker,tag=stellarity.altar_of_the_light] at @s run function stellarity:visuals/altar_of_light/loop

# Soul escape animation check triggers every 5 seconds

execute as @e[type=minecraft:ender_pearl,tag=!stellarity.prismatic_pearl] at @s run particle witch ~ ~ ~ .1 .1 .1 0.1 2 force
execute as @e[type=minecraft:eye_of_ender] at @s run function stellarity:visuals/eye_of_ender
