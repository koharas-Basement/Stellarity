execute store result score #count stellarity.misc run data get entity @s Item.Count 1

scoreboard players set #1 stellarity.misc 1
scoreboard players operation #count stellarity.misc -= #1 stellarity.misc

execute store result entity @s Item.Count byte 1 run scoreboard players get #count stellarity.misc

particle explosion ~ ~ ~ 0 0 0 1 0 force @a[distance=..32]
particle smoke ~ ~ ~ 0 0 0 0.12 14 normal
particle end_rod ~ ~ ~ 0 0 0 0.12 28 normal

playsound minecraft:entity.allay.item_taken block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

scoreboard players set #eol.is_alive stellarity.misc 1

function stellarity:mobs/eol/summon
