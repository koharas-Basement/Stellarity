# Age
# Ticked every 2nd tick
scoreboard players add @s stellarity.misc 2

execute if score @s stellarity.misc matches 10 run tag @s add stellarity.spirit_dagger.spirit_ready
execute if score @s stellarity.misc matches 10 run tag @e[type=interaction,limit=1,sort=nearest] add stellarity.spirit_dagger.spirit_ready

# 15 seconds of lifespan
execute if score @s stellarity.misc matches 301.. run function stellarity:items/spirit_dagger/spirit/timeout

# Particles
particle soul_fire_flame ~ ~1.75 ~ .3 .3 .3 0.01 2 normal
particle dust 0.353 0.525 0.769 1 ~ ~1.75 ~ .35 .35 .35 0 2 normal
