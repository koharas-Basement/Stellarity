execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/swamp

scoreboard players set #damage stellarity.misc 50

scoreboard players set #armor_penetration stellarity.misc 0
scoreboard players set #ignore_iframes stellarity.misc 1

tag @s add stellarity.damage.natures_wrath

effect give @s slowness 5 0 true

# Extra strong knockback
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

function stellarity:utils/damage/start
