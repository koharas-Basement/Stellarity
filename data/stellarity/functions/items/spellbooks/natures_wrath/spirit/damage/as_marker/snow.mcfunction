particle block snow_block ~ ~ ~ 0 0 0 1 8 normal
particle block ice ~ ~ ~ 0 0 0 1 7 normal
particle firework ~ ~ ~ 0 0 0 0.1 12 normal

playsound minecraft:block.snow.break neutral @a ~ ~ ~ 1 0.9
playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1 1

scoreboard players set #dot.time stellarity.misc 40

scoreboard players set #add stellarity.misc 4
scoreboard players operation #add stellarity.misc *= @s stellarity.misc2
scoreboard players operation #dot.time stellarity.misc += #add stellarity.misc

kill @s
