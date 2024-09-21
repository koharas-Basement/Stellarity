tag @s add stellarity.zephyr.killed_entity

playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1
playsound item.trident.throw player @a ~ ~ ~ 1 2

summon marker ^ ^ ^ {Tags:["stellarity.zephyr.wind"]}

execute as @e[type=marker,tag=stellarity.zephyr.wind,sort=nearest,limit=1] at @s store result entity @s Rotation[0] float 1 run loot spawn ~ ~ ~ loot stellarity:utils/random_rotation
