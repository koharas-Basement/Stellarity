fill ~ ~-1 ~ ~ ~1 ~ air replace observer

execute store result score #random stellarity.misc run random value 1..10

execute if score #random stellarity.misc matches 1..6 run \
	setblock ~ ~ ~ spawner{SpawnCount:2,MaxNearbyEntities:4,SpawnRange:6,Delay:40,MinSpawnDelay:300,MaxSpawnDelay:600,RequiredPlayerRange:8,SpawnPotentials:[{data:{entity:{id:"minecraft:wither_skeleton",Tags:["stellarity.aware"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],HandDropChances:[0f,0f]}},weight:5},{data:{entity:{id:"minecraft:wither_skeleton",Tags:["stellarity.aware"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0f,0f]}},weight:4},{data:{entity:{id:"minecraft:wither_skeleton",Tags:["stellarity.aware"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],HandDropChances:[0f,0f],ArmorItems:[{Count:1b,id:"minecraft:iron_helmet"},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}},weight:3},{data:{entity:{id:"minecraft:wither_skeleton",Tags:["stellarity.aware"],HandItems:[{id:"minecraft:stone_axe",Count:1b},{}],HandDropChances:[0f,0f],ArmorItems:[{Count:1b,id:"minecraft:iron_helmet"},{Count:1b,id:"minecraft:chainmail_chestplate"},{},{}],ArmorDropChances:[0f,0f,0f,0f]}},weight:1}]} replace

execute if score #random stellarity.misc matches 7..9 run \
	setblock ~ ~ ~ spawner{SpawnCount:2,MaxNearbyEntities:2,SpawnRange:8,Delay:40,MinSpawnDelay:300,MaxSpawnDelay:600,RequiredPlayerRange:8,SpawnData:{entity:{id:"minecraft:vex",HandItems:[{},{}]}}} replace

execute if score #random stellarity.misc matches 10 run \
	setblock ~ ~ ~ spawner{SpawnCount:2,MaxNearbyEntities:2,SpawnRange:8,Delay:40,MinSpawnDelay:300,MaxSpawnDelay:600,RequiredPlayerRange:8,SpawnData:{entity:{id:"minecraft:vex",HandItems:[{Count:1b,id:"minecraft:wooden_axe"},{}],HandDropChances:[0f,0f]}}} replace
