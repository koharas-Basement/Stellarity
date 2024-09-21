execute unless entity @e[type=marker,limit=1,sort=nearest,tag=stellarity.aota.2] run summon marker ~ ~ ~ {Tags:[stellarity.aota.2]}
execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.aota.2] at @s run function stellarity:mechanics/altar_of_accursed/sfx/loop_2

tp @s ~ ~ ~ ~5 ~

particle smoke ~ ~-0.3 ~ 0.05 0.3 0.05 0 1 force @a[distance=..32]

particle dust_color_transition 0.733 0 1 1.33 0.106 0 0.145 ^ ^-1 ^1 0 0 0 0 1 normal 
particle dust_color_transition 0.733 0 1 1.33 0.106 0 0.145 ^ ^-1 ^-1 0 0 0 0 1 normal 

execute positioned ~ ~-1 ~ if block ~ ~ ~ end_portal_frame[eye=true] run function stellarity:mechanics/altar_of_accursed/sfx/replace_eye

execute if predicate kohara:chance/33percent run particle enchant ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]
