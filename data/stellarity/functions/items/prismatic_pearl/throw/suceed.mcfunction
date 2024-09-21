scoreboard players set @s stellarity.items.prismatic_pearl.cooldown 100

stopsound @a neutral minecraft:entity.ender_pearl.throw
playsound minecraft:entity.ender_eye.launch neutral @a ~ ~ ~ 1 1
playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1 0.75
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ .4 1.4

execute as @e[type=ender_pearl,limit=1,sort=nearest] run tag @s add stellarity.prismatic_pearl
execute if entity @s[name="Bush_King",predicate=stellarity:utils/chance/50percent] as @e[type=ender_pearl,limit=1,sort=nearest] run tag @s add stellarity.prismatic_pearl.bush
