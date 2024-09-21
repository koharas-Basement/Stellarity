kill @e[type=end_crystal,tag=!fe.new_crystal,sort=nearest,distance=..7]
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a[distance=0..] ~ ~ ~ 6 0.77
playsound minecraft:block.beacon.power_select block @a[distance=0..] ~ ~ ~ 6 1.5

tag @s remove fe.new_crystal

