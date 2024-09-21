setblock ~ ~-2 ~ structure_block[mode=load]{name:"far_end:exit_portal/deactivated",posX:-6,posY:0,posZ:-6,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-1 ~ minecraft:redstone_block
playsound minecraft:block.beacon.activate ambient @a[distance=0..] ~ ~ ~ 2 0.75
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=0..] ~ ~ ~ 0.05 0.7
