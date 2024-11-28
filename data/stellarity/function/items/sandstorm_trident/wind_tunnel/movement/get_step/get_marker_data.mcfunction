execute store result score @s stellarity.misc2 run data get entity @n[type=marker,tag=stellarity.sandstorm_trident.marker] data.duration[0]
execute store result score @s stellarity.misc3 run data get entity @n[type=marker,tag=stellarity.sandstorm_trident.marker] data.steps[0]
data remove entity @n[type=marker,tag=stellarity.sandstorm_trident.marker] data.duration[0]
data remove entity @n[type=marker,tag=stellarity.sandstorm_trident.marker] data.steps[0]

execute store result entity @s teleport_duration int 1 run scoreboard players get @s stellarity.misc2
tag @s add stellarity.scheduled_tp
