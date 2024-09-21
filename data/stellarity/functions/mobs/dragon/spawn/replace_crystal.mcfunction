kill @e[type=end_crystal,tag=!fe.new_crystal,sort=nearest,distance=..7]
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode block @a[distance=0..] ~ ~ ~ 6 0.73
playsound minecraft:entity.ender_eye.death block @a[distance=0..] ~ ~ ~ 6 0.9

tag @s remove fe.new_crystal
