tag @s remove stellarity.elytra.flying
execute unless block ~ ~-0.2 ~ #kohara:liquids run playsound entity.breeze.land player @a[distance=0..] ~ ~ ~ 0.75 1
execute unless block ~ ~-0.2 ~ #kohara:liquids run function stellarity:mechanics/elytra/stop_flying_wave

attribute @s gravity modifier remove stellarity:phantom_wings