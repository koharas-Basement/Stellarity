### Timer ###
scoreboard players add @s fe.timer 1

### Animation ###
execute if score @s fe.timer matches 1 run function far_end:structures/exit_portal/deactivated/generate
#execute if score @s fe.timer matches 1 run setblock ~ ~3 ~ minecraft:dragon_egg

### Cancel Animation ###
#execute unless block ~ ~3 ~ minecraft:dragon_egg run function far_end:structures/exit_portal/respawn/cancel
execute unless score @s fe.count matches 4 run function far_end:structures/exit_portal/respawn/cancel

# crystal beam target
execute if score @s fe.timer matches 20 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/0
execute if score @s fe.timer matches 80 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/1
execute if score @s fe.timer matches 120 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/2
execute if score @s fe.timer matches 160 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/3
execute if score @s fe.timer matches 200 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/4
execute if score @s fe.timer matches 240 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/5
execute if score @s fe.timer matches 280 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/6
execute if score @s fe.timer matches 320 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/7
execute if score @s fe.timer matches 360 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/8
execute if score @s fe.timer matches 400 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/9
execute if score @s fe.timer matches 440 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/10
execute if score @s fe.timer matches 480 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/0

# place crystal
execute if score @s fe.timer matches 120 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal 42 141 0 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 160 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal 33 146 24 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 200 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal 12 115 39 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 240 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal -13 147 39 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 280 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal -34 146 24 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 320 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal -42 114 0 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 360 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal -34 141 -25 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 400 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal -13 117 -40 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 440 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal 12 128 -40 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}
execute if score @s fe.timer matches 480 as @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal] run summon minecraft:end_crystal 33 116 -25 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:150, Z:0}}

# crystal cage
execute if score @s fe.timer matches 200 positioned 12 114 39 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 240 positioned -13 146 39 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 400 positioned -13 116 -40 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 480 positioned 33 115 -25 run function far_end:structures/exit_portal/respawn/repair_cage

# crystal replacement
execute as @e[type=minecraft:end_crystal,tag=fe.new_crystal] at @s run function far_end:structures/exit_portal/respawn/replace_crystal

execute if score @s fe.timer matches 580 run function fokastudio:end/mobs/dragon/respawn_finish
