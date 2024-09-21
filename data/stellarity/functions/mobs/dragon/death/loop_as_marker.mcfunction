execute if score @s stellarity.dragon.respawn_animation_progress matches 160 run function stellarity:mobs/dragon/death/explode
execute if score @s stellarity.dragon.respawn_animation_progress matches 170 run function stellarity:mobs/dragon/death/explode
execute if score @s stellarity.dragon.respawn_animation_progress matches 180 run function stellarity:mobs/dragon/death/explode

# Stellarity's sound effects and bonus particles
tp @s ~ ~0.1 ~

particle cloud ~ ~ ~ 0 0 0 0.26 3 force
particle dragon_breath ~ ~ ~ 0 0 0 0.26 1 force

