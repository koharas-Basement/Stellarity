scoreboard players add @s stellarity.misc.end_portal_animation 1

execute if score @s stellarity.misc.end_portal_animation matches 1 run stopsound @a[distance=..48] music

execute if score @s stellarity.misc.end_portal_animation matches 26 run function stellarity:visuals/end_portal_animation/animation/flash

execute if score @s stellarity.misc.end_portal_animation matches 36 run function stellarity:visuals/end_portal_animation/animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 42 run function stellarity:visuals/end_portal_animation/animation/finish

execute if score @s stellarity.misc.end_portal_animation matches 82 run playsound stellarity:music.create_portal music @a[distance=..48] ~ 500 ~ 0 1 0.5
execute if score @s stellarity.misc.end_portal_animation matches 82 run kill @s
