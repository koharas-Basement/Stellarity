# Duskberry
execute if entity @s[tag=stellarity.duskberry_cloud] run function stellarity:item/duskberry/as_aec

# Starstruck Carcanet
execute if entity @s[tag=stellarity.shield.aec] run function stellarity:item/starstruck_shield/aec_loop

# Fish of Vitality
# Yes, it is still referred to as 'crystal_heartfish' in the code, deal with it
execute if entity @s[tag=stellarity.items.fish.crystal_heartfish.aec] rotated as @s run function stellarity:item/food/fish/crystal_heartfish/animation

# Void Fishing
execute if entity @s[tag=stellarity.void_fishing.aec] run function stellarity:mechanic/void_fishing/as_aec/tick

execute if entity @s[tag=stellarity.wind_tunnel,tag=!stellarity.wind_tunnel.end] run function stellarity:item/sandstorm_trident/wind_tunnel/aec_tick
