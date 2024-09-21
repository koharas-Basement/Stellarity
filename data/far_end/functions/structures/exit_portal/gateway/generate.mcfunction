setblock ~ ~ ~ structure_block[mode=load]{name:"far_end:end_gateway",posX:-3,posY:-8,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~1 ~ minecraft:redstone_block
setblock ~ ~ ~ minecraft:end_gateway{Age:1L}
playsound block.end_gateway.spawn block @a[distance=0..] ~ ~ ~ 1 1
