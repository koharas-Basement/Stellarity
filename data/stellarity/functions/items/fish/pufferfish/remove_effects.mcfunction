tag @s remove stellarity.pufferfish

effect clear @s nausea
effect clear @s hunger
effect clear @s poison

summon experience_orb ~ ~ ~ {Value:200}
particle minecraft:totem_of_undying ~ ~1.5 ~ 0 0 0 .5 70 force @a[distance=..32]
playsound minecraft:entity.player.levelup player @a ~ ~ ~
