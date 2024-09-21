particle dust 0.454 0.662 0.898 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle dust 0.796 0.545 0.901 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle dust 0.592 0.882 0.894 1.22 ~ ~ ~ 0.28 0.28 0.28 1 7 normal

execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={minor=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={small=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0 3 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={big=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.3 0.3 0.3 0 7 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={large=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.4 0.4 0.4 0 11 force
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={huge=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0 21 force

playsound minecraft:particle.soul_escape player @a ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.25 0.7
