scoreboard players remove @s stellarity.items.stellar_striker.stars.amount 1

summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.star"]}
execute as @p at @s anchored eyes rotated ~ ~ run tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.star] ^ ^ ^ ~ ~
execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.star] at @s run tp @s ~ ~-0.2 ~

execute as @p[predicate=stellarity:items/holding/stellar_striker/sword] if predicate stellarity:items/holding/stellar_striker/casket_of_stars run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.star] add stellarity.casket

playsound minecraft:entity.shulker.shoot player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker.shoot player @a[distance=0..] ~ ~ ~ 1 1.7

scoreboard players set @p stellarity.items.stellar_striker.cooldown 13
