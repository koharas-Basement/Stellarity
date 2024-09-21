particle block bamboo ~ ~ ~ 0 0 0 1 15 normal
particle firework ~ ~ ~ 0 0 0 0.1 12 normal

playsound block.grass.break neutral @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker_bullet.hurt neutral @a[distance=0..] ~ ~ ~ 1 1

execute unless score @s stellarity.misc2 matches 4.. run scoreboard players set #upgr stellarity.misc 0
execute if score @s stellarity.misc2 matches 4..6 run scoreboard players set #upgr stellarity.misc 1
execute if score @s stellarity.misc2 matches 7.. run scoreboard players set #upgr stellarity.misc 2

kill @s
