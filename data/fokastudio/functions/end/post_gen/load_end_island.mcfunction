# Post-gen for Vanilla
tag @s add foka.loaded_end_island
execute in minecraft:the_end run setblock -32 56 -32 minecraft:structure_block[mode=load]{author:"FokaStudio",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fokastudio:end/end_island_lower",posX:-80,posY:-50,posZ:-80,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:160,sizeY:80,sizeZ:160} replace
execute in minecraft:the_end run setblock -32 57 -32 redstone_block replace

execute in minecraft:the_end run setblock -32 88 -32 minecraft:structure_block[mode=load]{author:"FokaStudio",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fokastudio:end/end_island_upper",posX:-80,posY:0,posZ:-80,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:160,sizeY:80,sizeZ:160} replace
execute in minecraft:the_end run setblock -32 87 -32 redstone_block replace

# Cleanup
execute in minecraft:the_end run fill 0 87 0 0 88 0 obsidian
execute in minecraft:the_end run setblock -32 87 -32 air replace
execute in minecraft:the_end run setblock 0 58 0 air replace
execute in minecraft:the_end run setblock 0 60 0 air replace
