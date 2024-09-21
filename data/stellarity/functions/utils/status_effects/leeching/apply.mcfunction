execute unless score @s stellarity.dot.leeching.damage matches 0.. run scoreboard players set @s stellarity.dot.leeching.damage 0

scoreboard players operation @s stellarity.dot.leeching.delay = #dot.delay stellarity.misc
scoreboard players operation @s stellarity.dot.leeching.time = #dot.time stellarity.misc

playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 0
playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 1

tag @s add kohara.status_effect.tick
