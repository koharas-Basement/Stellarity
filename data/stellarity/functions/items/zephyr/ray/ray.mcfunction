execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=player,tag=!stellarity.tag,dx=0,sort=nearest] run function stellarity:items/zephyr/ray/check_hit_entity
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..160 positioned ^ ^ ^0.1 run function stellarity:items/zephyr/ray/ray

particle dust 1 1 1 0.33 ~ ~ ~ .05 .05 .05 0 3 normal
