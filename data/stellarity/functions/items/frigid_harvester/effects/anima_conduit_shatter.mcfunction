particle dust 0.419 0.615 0.98 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle dust 0.956 0.4 0.8 1.22 ~ ~ ~ 0.28 0.28 0.28 1 14 normal

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 14 normal

particle minecraft:soul ~ ~ ~ 0.25 0.25 0.25 0.02 6 force

execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={minor=true}}] run particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={small=true}}] run particle minecraft:heart ~ ~ ~ 0.4 0.4 0.4 0 2 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={big=true}}] run particle minecraft:heart ~ ~ ~ 0.6 0.6 0.6 0 3 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={large=true}}] run particle minecraft:heart ~ ~ ~ 0.8 0.8 0.8 0 4 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={huge=true}}] run particle minecraft:heart ~ ~ ~ 1 1 1 0 5 force

playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 0.6
playsound minecraft:entity.snow_golem.death player @a[distance=0..] ~ ~ ~ 1 0.78
