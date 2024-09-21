scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 1 run function stellarity:items/prismember/spin/animation/1

execute positioned ^ ^0.7 ^1.5 run function stellarity:items/prismember/spin/animation/spin_particle
execute rotated ~45 ~ positioned ^ ^0.7 ^1.5 run function stellarity:items/prismember/spin/animation/spin_particle

tp @s ~ ~ ~ ~90 ~

execute if score @s stellarity.misc matches 4 run function stellarity:items/prismember/spin/animation/2
