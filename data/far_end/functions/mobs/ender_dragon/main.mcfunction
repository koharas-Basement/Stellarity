execute if entity @s[tag=!fe.init] run function far_end:mobs/ender_dragon/init

## Boss Health ###
# health
execute as @s store result score @s fe.health run data get entity @s Health 1
# visibility
# Moved to far_end:main

# health update
execute store result bossbar fe:ender_dragon value as @s run scoreboard players get @s fe.health

### Behaviour ###
# Phase Monitor
execute as @s store result score @s fe.variable run data get entity @s DragonPhase

# Dragon Phase Control
# - to landing phase
execute at @s[tag=!fe.landing] if predicate far_end:mobs/ender_dragon/landing_boundary run function far_end:mobs/ender_dragon/phase/transition/landing
# - take off
execute at @s[tag=fe.landing] unless predicate far_end:mobs/ender_dragon/landing_boundary run function far_end:mobs/ender_dragon/phase/transition/take_off
# - searching portal replace
execute if score @s fe.variable matches 2 run data merge entity @s {DragonPhase:3}
# - take off fail fix
execute if score @s fe.variable matches 4 run data merge entity @s {DragonPhase:0}


# Marker teleport
execute at @s run tp @e[type=marker,tag=foka.dragon_marker] ~ ~ ~
