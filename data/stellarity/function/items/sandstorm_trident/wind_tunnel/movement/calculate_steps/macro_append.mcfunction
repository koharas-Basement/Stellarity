$data modify entity @n[type=marker,tag=stellarity.sandstorm_trident.marker] data.steps append value $(step)
$data modify entity @n[type=marker,tag=stellarity.sandstorm_trident.marker] data.duration append value $(duration)

scoreboard players add @n[type=marker,tag=stellarity.sandstorm_trident.marker] stellarity.misc3 1
