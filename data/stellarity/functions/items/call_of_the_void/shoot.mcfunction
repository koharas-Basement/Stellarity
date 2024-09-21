# Limit of 3 to support Multishot (1.20.5+)
execute positioned ~ ~1.7 ~ as @e[type=#arrows,limit=3,sort=nearest,distance=..1.5] run function stellarity:items/call_of_the_void/arrow/modify

stopsound @a[distance=..16] * minecraft:entity.arrow.shoot

playsound minecraft:entity.arrow.shoot player @a[distance=0..] ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_dragon.hurt player @a[distance=0..] ~ ~ ~ 0.2 0.7
