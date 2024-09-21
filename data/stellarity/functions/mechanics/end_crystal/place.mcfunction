advancement revoke @s only stellarity:events/end_crystal/place

#playsound minecraft:block.shroomlight.place player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:block.end_portal_frame.fill block @a[distance=0..] ~ ~ ~ 1 0.5
playsound minecraft:block.glass.place block @a[distance=0..] ~ ~ ~ 1 0.8

execute as @e[type=end_crystal,limit=1,sort=nearest,tag=!stellarity.end_crystal] at @s run function stellarity:mechanics/end_crystal/summon_interaction
