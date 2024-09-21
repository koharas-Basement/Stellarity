tag @s add stellarity.rotated

execute store result entity @s Rotation[0] float 0.1 run random value 0..3600
execute store result entity @s Rotation[1] float 0.1 run random value -750..750
