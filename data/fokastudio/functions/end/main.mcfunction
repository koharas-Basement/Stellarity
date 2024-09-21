function fokastudio:end/shulker_sentry
function fokastudio:end/end_gateway_loop
function fokastudio:end/advancements/main
function fokastudio:end/items/main
function fokastudio:end/mechanics/main
function fokastudio:end/visuals/main
function fokastudio:end/music/dragon_music
function fokastudio:end/butcher_mobs
function fokastudio:end/utils/main
function fokastudio:end/mobs/main


# Clear the Armor Stand that is holding the Dragonblade in The Dragon's Den when it is holding nothing
execute as @e[type=armor_stand,tag=foka.dragonblade_holder,predicate=fokastudio:end/utils/holding_nothing] run kill @s

# 2 checks for loading in The Dragon's Den
# If you have mods that enlarge the Structure Blocks' limit, vanilla method will fail to generate properly (Den will end up offset)
# Otherwise it works flawlessly, as I offset the generation myself to fix this (I did it on vanilla, ok?)
# Hence there are 2 config options used here, 1 in order to see if the game should even attempt to generate it,
# and the other one to see which post-gen offset it should use
execute if score foka.config foka.config.post_gen.load_main_island matches 1 if score foka.config foka.config.mod_support.expanded_structure_blocks matches 0 as @e[type=marker,tag=fe.exit_portal,tag=!foka.loaded_end_island] run function fokastudio:end/post_gen/load_end_island
execute if score foka.config foka.config.post_gen.load_main_island matches 1 if score foka.config foka.config.mod_support.expanded_structure_blocks matches 1 as @e[type=marker,tag=fe.exit_portal,tag=!foka.loaded_end_island] run function fokastudio:end/post_gen/load_end_island_modded

# Crystal Fix
# If 2 or more biomes generate in a collumn at 0 0, this causes to double the amount of crystals and dragon spawning
# As of my recent changes to the generation of The Void - it always happens
# It will only get worse the more 3D biomes I add
execute as @e[type=end_crystal] at @s run function fokastudio:end/3d_biome_fix/check

# Some Minecraft change causes default Ender Dragon to spawn no matter
# what, and this is ruining this whole system
# It DOES NOT come witht he tags though!
# I can just butcher the dragon in the most painless way possible
execute as @e[type=minecraft:ender_dragon,tag=!fe.boss,tag=!fe.ender_dragon,tag=!fe.init,tag=!fe.mob] run kill @s
