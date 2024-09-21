execute if score @s fe.timer matches 160 run function stellarity:mobs/dragon/death/explode
execute if score @s fe.timer matches 170 run function stellarity:mobs/dragon/death/explode
execute if score @s fe.timer matches 180 run function stellarity:mobs/dragon/death/explode

# Stellarity's sound effects and bonus particles
tp @s ~ ~0.1 ~

particle cloud ~ ~ ~ 0 0 0 0.26 3 force
particle dragon_breath ~ ~ ~ 0 0 0 0.26 1 force

