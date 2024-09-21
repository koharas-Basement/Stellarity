# Called directly from marker loop
tp @s ~ ~ ~ ~-2 ~

execute positioned ~ ~-1 ~ run function stellarity:mobs/dragon/spawn/wind/1
execute if entity @s[tag=stellarity.dragon.wind.2] positioned ~ ~0.5 ~ run function stellarity:mobs/dragon/spawn/wind/2
execute if entity @s[tag=stellarity.dragon.wind.3] positioned ~ ~2 ~ run function stellarity:mobs/dragon/spawn/wind/3
