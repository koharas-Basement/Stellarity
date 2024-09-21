particle dust 0.419 0.615 0.98 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle dust 0.956 0.4 0.8 1.22 ~ ~ ~ 0.28 0.28 0.28 1 14 normal

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 14 normal

execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={minor=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.2 0.2 0.2 0.15 2 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={small=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.3 0.3 0.3 0.15 4 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={big=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.4 0.4 0.4 0.15 6 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={large=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.5 0.5 0.5 0.15 8 force
execute if entity @s[advancements={stellarity:events/items/kill/aery_sword={huge=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.6 0.6 0.6 0.15 10 force

playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 0.6
playsound minecraft:entity.snow_golem.death player @a[distance=0..] ~ ~ ~ 1 0.78
