data modify storage stellarity:temp Rotation set from entity @s Rotation

execute store result score @s stellarity.misc.motion.x1 run data get entity @s Pos.[0] 1000
execute store result score @s stellarity.misc.motion.y1 run data get entity @s Pos.[1] 1000
execute store result score @s stellarity.misc.motion.z1 run data get entity @s Pos.[2] 1000

execute at @s facing entity @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] feet rotated ~180 0 run tp @s ^ ^0.01 ^0.04 ~ ~

execute store result score @s stellarity.misc.motion.x2 run data get entity @s Pos.[0] 1000
execute store result score @s stellarity.misc.motion.y2 run data get entity @s Pos.[1] 1000
execute store result score @s stellarity.misc.motion.z2 run data get entity @s Pos.[2] 1000

scoreboard players operation @s stellarity.misc.motion.x2 -= @s stellarity.misc.motion.x1
scoreboard players operation @s stellarity.misc.motion.y2 -= @s stellarity.misc.motion.y1
scoreboard players operation @s stellarity.misc.motion.z2 -= @s stellarity.misc.motion.z1

execute store result entity @s Motion.[0] double 0.027 run scoreboard players get @s stellarity.misc.motion.x2
execute store result entity @s Motion.[1] double 0.042 run scoreboard players get @s stellarity.misc.motion.y2
execute store result entity @s Motion.[2] double 0.027 run scoreboard players get @s stellarity.misc.motion.z2

data modify entity @s Rotation set from storage stellarity:temp Rotation
