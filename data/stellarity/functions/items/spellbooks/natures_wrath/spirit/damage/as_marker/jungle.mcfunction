particle block bamboo ~ ~ ~ 0 0 0 1 15 normal
particle firework ~ ~ ~ 0 0 0 0.1 12 normal

playsound minecraft:block.big_dripleaf.tilt_down neutral @a ~ ~ ~ 1 0.9
playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1 1

execute unless score @s stellarity.misc2 matches 5.. run scoreboard players set #upgr stellarity.misc 0
execute if score @s stellarity.misc2 matches 5..7 run scoreboard players set #upgr stellarity.misc 1
execute if score @s stellarity.misc2 matches 8.. run scoreboard players set #upgr stellarity.misc 2

kill @s
