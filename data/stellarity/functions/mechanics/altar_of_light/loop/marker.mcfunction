execute positioned ~ ~-1 ~ as @e[type=item_display,limit=1,sort=nearest,distance=..0.01,tag=!stellarity.aots] run tag @s add stellarity.aots
execute positioned ~ ~-1 ~ as @e[type=item_display,limit=1,sort=nearest,distance=..0.01,tag=stellarity.aots] at @s run function stellarity:mechanics/altar_of_light/loop/item_display

execute unless score #eol.is_alive stellarity.misc matches 1 run function stellarity:mechanics/altar_of_light/visuals

execute unless score #eol.is_alive stellarity.misc matches 1 run scoreboard players add @s stellarity.mechanics.altar_of_the_sacred.timer 1
execute if score @s stellarity.mechanics.altar_of_the_sacred.timer matches 300 run function stellarity:mechanics/altar_of_light/ambient_sounds
