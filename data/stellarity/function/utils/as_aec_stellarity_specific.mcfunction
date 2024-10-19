execute if entity @s[tag=stellarity.items.dragonblade.smthgram_aec] rotated as @s run function stellarity:items/dragonblade/punch/special_fx/smthgram

# Duskberry
execute if entity @s[tag=stellarity.duskberry_cloud] run function stellarity:items/duskberry/as_aec

# Starstruck Carcanet
execute if entity @s[tag=stellarity.shield.aec] run function stellarity:items/starstruck_shield/aec_loop

# Crystal Heartfish
execute if entity @s[tag=stellarity.items.fish.crystal_heartfish.aec] rotated as @s run function stellarity:items/food/fish/crystal_heartfish/animation

# Void Fishing
execute if entity @s[tag=stellarity.void_fishing_aec] run function stellarity:mechanics/void_fishing/as_aec/tick
