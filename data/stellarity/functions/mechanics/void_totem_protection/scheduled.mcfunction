effect give @s slow_falling 45 0 false

effect clear @s levitation

particle minecraft:cloud ~ ~1.45 ~ 0 0 0 0.3 40 force
particle minecraft:dragon_breath ~ ~1.45 ~ 0 0 0 0.2 40 force
particle minecraft:flash ~ ~1.45 ~ 0 0 0 0 1 force

playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~

tag @s remove stellarity.scheduled_void_totem_effect
