particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 25 force @s
particle minecraft:block blue_ice ~ ~1 ~ 0 0 0 3 15 force @a[distance=..32]
particle minecraft:block pink_stained_glass ~ ~1 ~ 0 0 0 3 15 force @a[distance=..32]

execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
	playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 0.8
execute if score #sound stellarity.misc matches 2 run \
	playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 0.9
execute if score #sound stellarity.misc matches 3 run \
	playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 1
execute if score #sound stellarity.misc matches 4 run \
	playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 1.1
execute if score #sound stellarity.misc matches 5 run \
	playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 1.2

playsound minecraft:block.glass.break player @s ~ ~ ~ 0.8 0.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 0.5
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 0.8

playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 1 0
