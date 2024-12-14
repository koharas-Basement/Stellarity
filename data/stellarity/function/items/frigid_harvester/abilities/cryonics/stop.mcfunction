execute as @n[type=block_display,tag=stellarity.cryonics] on passengers as @s run kill @s
kill @n[type=block_display,tag=stellarity.cryonics]

particle minecraft:block{block_state: 'minecraft:ice'} ~ ~0.5 ~ 0.5 0.7 0.5 1 40
particle flash ~ ~1 ~

playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.8

effect clear @s regeneration
effect clear @s blindness
effect clear @s resistance
effect clear @s fire_resistance

attribute @s generic.knockback_resistance modifier remove stellarity:cryonics
attribute @s generic.fall_damage_multiplier modifier remove stellarity:cryonics
attribute @s generic.jump_strength modifier remove stellarity:cryonics
attribute @s generic.movement_speed modifier remove stellarity:cryonics

effect give @s absorption 12 3 true
effect give @s resistance 12 2 true
effect give @s regeneration 45 1 true
effect give @s fire_resistance 45 0 true

scoreboard players set @s stellarity.items.aery_sword.cryonics.cooldown 45

tag @s remove stellarity.cryonics
