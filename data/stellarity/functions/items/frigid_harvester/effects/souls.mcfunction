particle dust 0.419 0.615 0.98 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle dust 0.658 0.78 1 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle dust 0.956 0.4 0.8 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 14 normal

execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={minor=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={small=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.02 3 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={big=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.3 0.3 0.3 0.02 7 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={large=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.4 0.4 0.4 0.02 11 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={huge=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.02 21 force

playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.13 0.7
playsound minecraft:entity.snow_golem.death player @a[distance=0..] ~ ~ ~ 1 0.9
