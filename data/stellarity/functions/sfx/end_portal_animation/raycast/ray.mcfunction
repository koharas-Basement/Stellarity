execute if block ~ ~ ~ end_portal_frame run function stellarity:sfx/end_portal_animation/raycast/hit_block
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..100 positioned ^ ^ ^0.1 run function stellarity:sfx/end_portal_animation/raycast/ray
