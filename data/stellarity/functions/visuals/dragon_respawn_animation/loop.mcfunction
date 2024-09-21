# Beam at the end
execute if score @s stellarity.misc matches 356 run playsound minecraft:entity.warden.sonic_charge block @a ~ ~ ~ 4 1

execute if score @s stellarity.misc matches 390 run setblock 0 63 0 end_gateway
execute if score @s stellarity.misc matches 390 positioned 0 66 0 run function stellarity:visuals/dragon_respawn_animation/beam/shoot
execute as @e[type=marker,tag=stellarity.dragon_respawn.beam] at @s run function stellarity:visuals/dragon_respawn_animation/beam/loop

# Enchant particles
execute if score @s stellarity.misc matches ..660 run particle enchant 0 63 0 0 0 0 10 7 normal

# Circle
execute rotated ~ ~ run particle end_rod ^ ^0.35 ^10 0 0 0 0 1 force
execute rotated ~120 ~ run particle end_rod ^ ^0.35 ^10 0 0 0 0 1 force
execute rotated ~240 ~ run particle end_rod ^ ^0.35 ^10 0 0 0 0 1 force

tp @s ~ ~ ~ ~2.5 ~

# Ambient sounds
execute if score @s stellarity.misc matches 1 run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 3 0.75
execute if score @s stellarity.misc matches 200 run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 3 0.75
execute if score @s stellarity.misc matches 300 run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 3 0.75

