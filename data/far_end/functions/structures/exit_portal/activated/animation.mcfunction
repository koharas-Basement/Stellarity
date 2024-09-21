### Timer ###
scoreboard players add @s fe.timer 1

stopsound @a[predicate=stellarity:locations/in_dragons_den] music

# - bossbar disable
execute if score @s fe.timer matches 1 run bossbar set stellarity:crystal_count players
# - save dragon kill count
execute if score @s fe.timer matches 1 as @s run scoreboard players add @s fe.variable 1
execute if score @s fe.timer matches 1 as @e[type=marker,tag=stellarity.dragon_marker] at @s run tp @s ~ ~2.25 ~

scoreboard players operation @e[type=marker,tag=stellarity.dragon_marker,limit=1] fe.timer = @s fe.timer
execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run function stellarity:mobs/dragon/death/loop_as_marker

# - death delay
execute if score @s fe.timer matches 180 run function stellarity:mobs/dragon/death/finish

