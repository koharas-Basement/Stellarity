fill ~ ~ ~ ~ ~ ~ end_portal_frame[eye=false] replace end_portal_frame[eye=true]

execute if entity @p[gamemode=!creative,gamemode=!spectator] run summon item ~ ~.2 ~ {Item:{id:"ender_eye",Count:1b},PickupDelay:10,Age:0,Motion:[0d,0.2d,0d],Tags:["stellarity.aota.skip"]} 

playsound minecraft:particle.soul_escape block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.warden.agitated block @a[distance=0..] ~ ~ ~ 0.03 1
