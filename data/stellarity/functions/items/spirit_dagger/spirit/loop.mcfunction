# Age
scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 10 run tag @s add stellarity.spirit_dagger.spirit_ready
execute if score @s stellarity.misc matches 10 run tag @e[type=interaction,limit=1,sort=nearest] add stellarity.spirit_dagger.spirit_ready

# 15 seconds of lifespan
execute if score @s stellarity.misc matches 301.. run function stellarity:items/spirit_dagger/spirit/timeout

# Particles
teleport @s ~ ~ ~ ~5 ~
particle dust 0.988 0.988 0.988 1.3 ^ ^.75 ^0.75 0 0 0 0 1 normal
particle dust 0.988 0.988 0.988 1.3 ^ ^.75 ^-0.75 0 0 0 0 1 normal

particle dragon_breath ~ ~.75 ~ .3 .3 .3 0.01 1 normal
particle dust 0.757 0.337 0.812 1 ~ ~.75 ~ .35 .35 .35 0 1 normal
