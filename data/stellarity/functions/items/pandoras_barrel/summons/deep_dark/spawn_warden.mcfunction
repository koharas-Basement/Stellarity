summon warden ~ ~ ~ {Brain:{memories:{"minecraft:dig_cooldown":{ttl:1200L,value:{}},"minecraft:is_emerging":{ttl:134L,value:{}}}}}

particle minecraft:shriek 6 ~ ~ ~
particle minecraft:shriek 12 ~ ~ ~
particle minecraft:shriek 18 ~ ~ ~
particle minecraft:shriek 23 ~ ~ ~
particle minecraft:shriek 30 ~ ~ ~

effect give @a[distance=..24] darkness 30 0 true

playsound minecraft:ambient.cave block @a[distance=0..] ~ ~ ~ 3 1
playsound minecraft:block.sculk_shrieker.shriek block @a[distance=0..] ~ ~ ~ 1 1
