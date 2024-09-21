# Post-animation loop for extra details, like orbiting Eyes and ambient sounds

# Prevent Eyes of Ender being placed back into frames
execute if predicate stellarity:utils/end_portal_eye_delete run function stellarity:visuals/end_portal_animation/fill_stop/checks

tp @s ~ ~ ~ ~0.25 ~
execute as @e[type=armor_stand,tag=stellarity.end_portal_animation.eye] at @s facing entity @e[type=marker,limit=1,sort=nearest,tag=stellarity.end_portal] eyes run tp @s ~ ~ ~ ~ ~

execute rotated ~0 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_1,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~30 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_2,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~60 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_3,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~90 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_4,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~120 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_5,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~150 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_6,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~180 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_7,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~210 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_8,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~240 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_9,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~270 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_10,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~300 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_11,limit=1,sort=nearest] ^ ^-2 ^5
execute rotated ~330 ~ run tp @e[type=armor_stand,tag=stellarity.end_portal_animation.eye_12,limit=1,sort=nearest] ^ ^-2 ^5

particle mycelium ~ ~-1.65 ~ .8 0 .8 0 1 normal
