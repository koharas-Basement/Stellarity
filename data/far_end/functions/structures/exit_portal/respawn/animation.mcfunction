# Timer
scoreboard players add @s fe.timer 1

execute if score @s fe.timer matches 1 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run data merge entity @s {Glowing:0b,Invulnerable:1b}

# Deactivate portal
execute if score @s fe.timer matches 1 run function far_end:structures/exit_portal/deactivated/generate
execute if score @s fe.timer matches 1 run advancement grant @a[distance=..32] only stellarity:dragons_den/sacrificial_ritual
execute if score @s fe.timer matches 1 run summon marker ~ ~-1 ~ {Tags:["stellarity.dragon_respawn.marker","stellarity.marker"]}
execute if score @s fe.timer matches 1 run summon marker ~ ~-1 ~ {Tags:["stellarity.dragon_respawn.marker2","stellarity.marker"]}
execute if score @s fe.timer matches 1 run summon marker ~ ~-1 ~ {Tags:["stellarity.dragon_respawn.wind","stellarity.marker"]}

# Utility marker for secondary animations
scoreboard players operation @e[type=marker,tag=stellarity.dragon_respawn.marker] stellarity.misc = @s fe.timer
execute as @e[type=marker,tag=stellarity.dragon_respawn.marker] at @s run function stellarity:mobs/dragon/spawn/loop/main


# Cancel animation if End Crystals are missing
execute unless score @s fe.count matches 4 run function far_end:structures/exit_portal/respawn/cancel

# Crystal loop
execute if score @s fe.timer matches 30 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/0

execute if score @s fe.timer matches 100 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/1
execute if score @s fe.timer matches 120 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/2
execute if score @s fe.timer matches 140 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/3
execute if score @s fe.timer matches 160 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/4
execute if score @s fe.timer matches 180 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/5
execute if score @s fe.timer matches 200 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/6
execute if score @s fe.timer matches 220 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/7
execute if score @s fe.timer matches 240 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/8
execute if score @s fe.timer matches 260 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/9
execute if score @s fe.timer matches 280 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/10

execute if score @s fe.timer matches 300 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/crystal_beam/0

# place crystal
execute if score @s fe.timer matches 120 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal 63 101 0 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 140 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal 50 106 36 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 160 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal 18 95 59 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 180 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal -19 107 59 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 200 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal -51 106 36 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 220 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal -63 94 0 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 240 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal -51 101 -39 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 260 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal -19 97 -60 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 280 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal 18 88 -60 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}
execute if score @s fe.timer matches 300 as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run summon minecraft:end_crystal 50 96 -39 {ShowBottom:1b,Tags:["fe.new_crystal"],BeamTarget:{X:0,Y:128, Z:0}}

# crystal cage
execute if score @s fe.timer matches 160 positioned 18 94 59 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 220 positioned -63 93 0 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 260 positioned -19 96 -60 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 300 positioned 50 95 -39 run function far_end:structures/exit_portal/respawn/repair_cage

# crystal replacement
execute as @e[type=minecraft:end_crystal,tag=fe.new_crystal] at @s run function far_end:structures/exit_portal/respawn/replace_crystal

execute if score @s fe.timer matches 420 run function stellarity:mobs/dragon/respawn_finish
