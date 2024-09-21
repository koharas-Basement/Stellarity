particle flash ~ ~ ~ 0 0 0 0 1 force
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 0.5 1
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 0.9

execute store result score @s stellarity.misc run data get entity @s damage 10
# Reduce damage by 33%
# Too lazy to implement string draw time based damage reduction
# so here is a flat value one instead
# Take it or take it
scoreboard players set #temp stellarity.misc 3
scoreboard players set #temp2 stellarity.misc 2
scoreboard players operation @s stellarity.misc /= #temp stellarity.misc
scoreboard players operation @s stellarity.misc *= #temp2 stellarity.misc

execute as @e[type=!#stellarity:invalid_targets,distance=..3] run function stellarity:items/sharanga/damage

kill @s
