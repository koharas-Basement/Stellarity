setblock ~ ~-2 ~ structure_block[mode=load]{name:"far_end:exit_portal/activated",posX:-6,posY:0,posZ:-6,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-1 ~ minecraft:redstone_block
playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 2 1.25
playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 0.05 0.9
