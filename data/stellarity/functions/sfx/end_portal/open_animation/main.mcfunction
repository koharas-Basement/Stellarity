scoreboard players add @s stellarity.misc.end_portal_animation 1

execute if score @s stellarity.misc.end_portal_animation matches 2..70 run function stellarity:sfx/end_portal/open_animation/smoke
execute if score @s stellarity.misc.end_portal_animation matches 2 run stopsound @a[distance=..48] music
execute if score @s stellarity.misc.end_portal_animation matches 2 run playsound stellarity:block.end_portal.create player @a[distance=0..] ~ ~ ~
execute if score @s stellarity.misc.end_portal_animation matches 2..60 run particle minecraft:enchant ~ ~ ~ 1.2 0.15 1.2 0.1 6

execute if score @s stellarity.misc.end_portal_animation matches 46 run function stellarity:sfx/end_portal/open_animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 58 run function stellarity:sfx/end_portal/open_animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 66 run function stellarity:sfx/end_portal/open_animation/flash

execute if score @s stellarity.misc.end_portal_animation matches 70 run function stellarity:sfx/end_portal/open_animation/finish

execute if score @s stellarity.misc.end_portal_animation matches 110 run execute as @a[distance=..32] at @s run playsound stellarity:music.create_portal music @s ~ ~ ~ 0.5 1

execute if score @s stellarity.misc.end_portal_animation matches 110 run kill @s
