execute as @e[type=block_display,tag=stellarity.cryonics,limit=1,sort=nearest] on passengers as @s run kill @s
kill @e[type=block_display,tag=stellarity.cryonics,limit=1,sort=nearest]

particle minecraft:block ice ~ ~0.5 ~ 0.5 0.7 0.5 1 40
particle flash ~ ~1 ~

playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.8

effect clear @s regeneration
effect clear @s jump_boost
effect clear @s slowness
effect clear @s blindness
effect clear @s resistance
effect clear @s fire_resistance

attribute @s generic.knockback_resistance modifier remove b0e535e5-1645-47ed-8a3c-0f7e6450ec71

effect give @s absorption 12 3 true
effect give @s resistance 12 2 true
effect give @s regeneration 45 1 true
effect give @s fire_resistance 45 0 true

scoreboard players set @s stellarity.items.aery_sword.cryonics.cooldown 150

tag @s remove stellarity.cryonics
