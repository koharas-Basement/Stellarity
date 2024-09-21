particle lava ~ ~ ~ 0 0 0 0 6 normal
particle smoke ~ ~ ~ 0 0 0 0.1 12 normal

playsound entity.blaze.shoot neutral @a ~ ~ ~ 1 1.15
playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1 1

scoreboard players set #fire stellarity.misc 60
scoreboard players set #add stellarity.misc 5
scoreboard players operation #add stellarity.misc *= @s stellarity.misc2
scoreboard players operation #fire stellarity.misc += #add stellarity.misc

kill @s
