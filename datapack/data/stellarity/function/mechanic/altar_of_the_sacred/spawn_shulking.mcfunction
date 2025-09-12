execute store result score #count stellarity.misc run data get entity @s Item.count 1

scoreboard players set #1 stellarity.misc 1
scoreboard players operation #count stellarity.misc -= #1 stellarity.misc

execute store result entity @s Item.count byte 1 run scoreboard players get #count stellarity.misc

kill @e[type=item,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{"stellarity:item":"shulker_body"}}}}]

execute positioned ~ ~-1 ~ run kill @n[type=item_display,tag=stellarity.altar_of_the_sacred,distance=..1]
execute positioned ~ ~-1 ~ run kill @n[type=marker,tag=stellarity.altar_of_the_sacred,distance=..1]


particle explosion ~ ~ ~ 0 0 0 1 0 force @a[distance=..32]
particle smoke ~ ~ ~ 0 0 0 0.12 14 normal
particle end_rod ~ ~ ~ 0 0 0 0.12 28 normal

playsound minecraft:entity.allay.item_taken block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

function stellarity:entity/shulking/summon
