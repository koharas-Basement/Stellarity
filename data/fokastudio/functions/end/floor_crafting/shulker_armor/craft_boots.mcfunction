kill @e[tag=foka.altar_of_the_accursed.shulker_shells,distance=..1]
kill @e[tag=foka.altar_of_the_accursed.netherite_boots,distance=..1]

loot spawn ~ ~ ~ loot fokastudio:end/items/armors/shulker_armor/boots

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
particle minecraft:explosion ~ ~-.4 ~ .2 .2 .2 0 5 force
particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 force
particle minecraft:shriek 5 ~ ~ ~ 0 0 0 1 1 force
particle minecraft:shriek 10 ~ ~ ~ 0 0 0 1 1 force
particle minecraft:shriek 15 ~ ~ ~ 0 0 0 1 1 force
particle minecraft:shriek 20 ~ ~ ~ 0 0 0 1 1 force

playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 0.05
playsound minecraft:entity.warden.heartbeat block @a ~ ~ ~ 0.1
