execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=interaction,tag=!stellarity.spirit_dagger.raycast,tag=stellarity.spirit_dagger.spirit,dx=0,sort=nearest] run function stellarity:items/spirit_dagger/raycast/check_hit_entity
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..700 positioned ^ ^ ^0.1 run function stellarity:items/spirit_dagger/raycast/ray

particle dust 0.454 0.662 0.898 1 ~ ~ ~ 0.223 0.223 0.223 1 1 force @a[distance=..192]
particle dust 0.796 0.545 0.901 1 ~ ~ ~ 0.223 0.223 0.223 1 1 force @a[distance=..192]
particle dust 0.592 0.882 0.894 1 ~ ~ ~ 0.223 0.223 0.223 1 1 force @a[distance=..192]

scoreboard players add #particles stellarity.misc 1

execute if score #particles stellarity.misc matches 6 run particle end_rod ~ ~ ~ 0.223 0.223 0.223 0.03 1 force @a[distance=..192]

# ANOTHER EASTER EGG???? :OOOOO
execute if score #particles stellarity.misc matches 6 if score #kohara stellarity.misc matches 1 run particle cherry_leaves ~ ~ ~ 0.26 0.26 0.26 0.015 1 force @a[distance=..192]

execute if score #particles stellarity.misc matches 6 run scoreboard players set #particles stellarity.misc 0
