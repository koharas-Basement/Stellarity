scoreboard players add #iterations stellarity.misc 1

summon marker ~ ~0.1 ~ {Tags:["stellarity.marker","stellarity.shrapnel"]}
execute as @e[type=marker,tag=!stellarity.rotated,limit=1,sort=nearest] run function stellarity:items/call_of_the_void/shrapnel/rotate

execute unless score #iterations stellarity.misc >= #shrapnel_count stellarity.misc run function stellarity:items/call_of_the_void/shrapnel/spawn_loop
execute if score #iterations stellarity.misc >= #shrapnel_count stellarity.misc run scoreboard players reset #iterations stellarity.misc

