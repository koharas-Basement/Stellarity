### Timer ###
scoreboard players add @s fe.timer 1

# - bossbar disable
execute if score @s fe.timer matches 1 run bossbar set fe:ender_dragon players
# - save dragon kill count
execute if score @s fe.timer matches 1 as @s run scoreboard players add @s fe.variable 1

# - death delay
execute if score @s fe.timer matches 200.. run function fokastudio:end/mobs/dragon/death_finish

# Foka's sound effects and bonus particles
execute as @e[type=marker,tag=foka.dragon_marker] at @s run tp @s ~ ~0.125 ~

execute as @e[type=marker,tag=foka.dragon_marker] at @s run particle poof ~ ~ ~ 4 4 4 0 5 force
execute as @e[type=marker,tag=foka.dragon_marker] at @s if predicate fokastudio:end/utils/chance/7percent run playsound entity.generic.explode master @a ~ ~ ~ 2.5 1