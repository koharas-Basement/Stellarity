scoreboard players add @s stellarity.items.elektra_shield.animation 1

execute if score @s stellarity.items.elektra_shield.animation matches 1 run function stellarity:items/elektra_shield/dash/spawn_marker

# Invulnerability
# Knockback resistance is applied in 'use.mcfunction'
effect give @s minecraft:resistance infinite 100 true

## SFX
# Particles
particle minecraft:electric_spark ~ ~1.1 ~ 0.25 0.5 0.25 0.5 12 normal
particle minecraft:dust 0.957 0.957 0.957 1 ~ ~1.1 ~ 0.25 0.5 0.25 0.5 8 force @a[distance=..32]
particle minecraft:dust 0.302 0.765 1 1 ~ ~1.1 ~ 0.25 0.5 0.25 0.5 8 force @a[distance=..32]
# Sounds
execute if score @s stellarity.items.elektra_shield.animation matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=0..] ~ ~ ~ 0.88 2
execute if score @s stellarity.items.elektra_shield.animation matches 1 run playsound minecraft:entity.illusioner.mirror_move player @a[distance=0..] ~ ~ ~ 1 1
execute if score @s stellarity.items.elektra_shield.animation matches 1 run playsound minecraft:entity.bat.takeoff player @a[distance=0..] ~ ~ ~ 1 1

# Damage
execute as @e[type=!#kohara:invalid_targets,distance=0.01..1.8,nbt={HurtTime:0s}] at @s run function stellarity:items/elektra_shield/dash/damage
execute as @e[type=minecraft:shulker_bullet,distance=0.01..1.8] at @s run function stellarity:items/elektra_shield/dash/damage

# Reset fall damage (every tick, as it accumulates FOR WHATEVER REASON)
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.elektra_shield"],effects:[{id:"minecraft:levitation",amplifier:0b,duration:2,show_particles:0b,show_icon:0b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

# End dash if in front of a block or after 6 ticks
execute rotated ~ 0 anchored feet unless block ^ ^.1 ^1.2 #kohara:non_solid run function stellarity:items/elektra_shield/dash/end
# Total tick counter always has to be 1 higher than the number of ticks
execute if score @s stellarity.items.elektra_shield.animation matches 6.. run function stellarity:items/elektra_shield/dash/end
