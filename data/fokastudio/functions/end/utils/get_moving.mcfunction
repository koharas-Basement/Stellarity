# Taken from DatapackUtilities
# https://github.com/ICY105/Datapack-Utilities
# Thanks ICY105, very cool ❤

tag @s remove foka.is_moving

scoreboard players operation temp_0 foka.misc.data = @s foka.misc.move_x
scoreboard players operation temp_1 foka.misc.data = @s foka.misc.move_y
scoreboard players operation temp_2 foka.misc.data = @s foka.misc.move_z

execute store result score @s foka.misc.move_x run data get entity @s Pos[0] 100
execute store result score @s foka.misc.move_y run data get entity @s Pos[1] 100
execute store result score @s foka.misc.move_z run data get entity @s Pos[2] 100

execute unless score temp_0 foka.misc.data = @s foka.misc.move_x run tag @s add foka.is_moving
execute unless score temp_1 foka.misc.data = @s foka.misc.move_y run tag @s add foka.is_moving
execute unless score temp_2 foka.misc.data = @s foka.misc.move_z run tag @s add foka.is_moving
