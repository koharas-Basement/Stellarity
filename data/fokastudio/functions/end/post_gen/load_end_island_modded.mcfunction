# Post-gen for modded versions that utilize mods that 
# expand Structure Block size, like Carpet
# Vanilla has a max size of 48x48x48
# It is unlikely for people to have it in a regular playthrough,
# but I use it for pack development and I find this quite handy :D
# You will thank me again all of you 3 people who use Carpet on their Fabric SMPs
tag @s add foka.loaded_end_island
execute in minecraft:the_end run setblock 0 58 0 minecraft:structure_block[mode=load]{author:"FokaStudio",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fokastudio:end/end_island_lower",posX:-80,posY:-50,posZ:-80,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:160,sizeY:80,sizeZ:160} replace
execute in minecraft:the_end run setblock 0 59 0 redstone_block replace

execute in minecraft:the_end run setblock 0 88 0 minecraft:structure_block[mode=load]{author:"FokaStudio",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fokastudio:end/end_island_upper",posX:-80,posY:0,posZ:-80,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:160,sizeY:80,sizeZ:160} replace
execute in minecraft:the_end run setblock 0 87 0 redstone_block replace

# Cleanup
execute in minecraft:the_end run fill 0 87 0 0 88 0 obsidian
execute in minecraft:the_end run setblock 0 58 0 air replace
