tag @s add stellarity.aota_activated

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.33 60 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.33 120 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.33 60 force

playsound minecraft:block.beacon.activate block @a ~ ~ ~ 5 1
playsound minecraft:entity.wither.death block @a ~ ~ ~ 5 1.2
playsound minecraft:entity.blaze.death block @a ~ ~ ~ 5 0

summon armor_stand ~0.50450701485292 ~-1.27415153937696 ~-0.34230595720676 {Invulnerable:0b,Pose:{RightArm:[80.0f,0.0f,0.0f]},Rotation:[-90.0f, 0.0f],Tags:["stellarity.aota.sword_holder"],Invisible:1b,NoGravity:1b,NoBasePlate:0b,DisabledSlots:4144702,ShowArms:1b,Small:0b}
loot replace entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=stellarity.aota.sword_holder] weapon.mainhand loot stellarity:items/dragonblade

setblock 52 79 -41 minecraft:end_rod[facing=up]
setblock 48 79 -41 minecraft:end_rod[facing=up]
setblock 52 79 -37 minecraft:end_rod[facing=up]
setblock 48 79 -37 minecraft:end_rod[facing=up]
