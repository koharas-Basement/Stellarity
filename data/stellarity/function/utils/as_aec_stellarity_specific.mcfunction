execute if entity @s[tag=stellarity.items.dragonblade.smthgram_aec] rotated as @s run function stellarity:items/dragonblade/punch/special_fx/smthgram

# Duskberry
execute if entity @s[tag=stellarity.duskberry_cloud] run function stellarity:items/duskberry/as_aec

# Starstruck Carcanet
execute if entity @s[tag=stellarity.shield.aec] run function stellarity:items/starstruck_shield/aec_loop

# Fish of Vitality
# Yes, it is still referred to as 'crystal_heartfish' in the code, deal with it
execute if entity @s[tag=stellarity.items.fish.crystal_heartfish.aec] rotated as @s run function stellarity:items/food/fish/crystal_heartfish/animation

# Void Fishing
execute if entity @s[tag=stellarity.void_fishing.aec] run function stellarity:mechanics/void_fishing/as_aec/tick

execute if entity @s[tag=stellarity.wind_tunnel,tag=!stellarity.wind_tunnel.end] run function stellarity:items/sandstorm_trident/wind_tunnel/aec_tick
