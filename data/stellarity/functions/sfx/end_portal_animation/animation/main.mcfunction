scoreboard players add @s stellarity.misc.end_portal_animation 1

execute if score @s stellarity.misc.end_portal_animation matches 1 run stopsound @a[distance=..48] music
execute if score @s stellarity.misc.end_portal_animation matches 2 run playsound stellarity:block.end_portal.create player @a[distance=0..] ~ ~ ~
execute if score @s stellarity.misc.end_portal_animation matches 2 run particle enchant
execute if score @s stellarity.misc.end_portal_animation matches 46 run function stellarity:sfx/end_portal_animation/animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 59 run function stellarity:sfx/end_portal_animation/animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 66 run function stellarity:sfx/end_portal_animation/animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 70 run function stellarity:sfx/end_portal_animation/animation/finish

execute if score @s stellarity.misc.end_portal_animation matches 110 run playsound stellarity:music.create_portal music @a[distance=..48] ~ 500 ~ 0 1 0.5
execute if score @s stellarity.misc.end_portal_animation matches 110 run kill @s
