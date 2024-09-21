scoreboard players remove @s stellarity.items.chorus_dagger.cooldown 1

execute if score @s stellarity.items.chorus_dagger.cooldown matches 101..200 run particle dust_color_transition 0.82 0.322 0.918 1 0.549 0.176 0.737 ~ ~1 ~ .3 .5 .3 0 2 normal
execute if score @s stellarity.items.chorus_dagger.cooldown matches 80..100 run particle dust_color_transition 0.82 0.322 0.918 1 0.549 0.176 0.737 ~ ~1 ~ .3 .5 .3 0 1 normal

execute if score @s stellarity.items.chorus_dagger.cooldown matches 0 run function stellarity:items/chorus_dagger/ready
