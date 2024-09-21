advancement revoke @s only stellarity:events/items/shoot_clockwork_crossbow

execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=3,sort=nearest,distance=..1,tag=!stellarity.aware] run data merge entity @s {damage:1d,pickup:2b,crit:0b}

playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.25 1.11
