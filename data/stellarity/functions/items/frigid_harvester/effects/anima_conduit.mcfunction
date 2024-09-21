playsound minecraft:block.beacon.power_select player @s ~ ~ ~ .5 1
#playsound minecraft:entity.wither.hurt player @s ~ ~ ~ 0.5 0

#playsound minecraft:block.glass.break player @s ~ ~ ~ 0.9 0.5
#playsound minecraft:block.glass.break player @s ~ ~ ~ 0.9 0.8

#playsound minecraft:entity.snow_golem.death player @s ~ ~ ~ 0.8 0.8

particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0 5 force @s

# Particles for other players
execute anchored eyes rotated ~ 0 run particle minecraft:heart ^ ^0.3 ^ 0.2 0.2 0.2 0 3 force @a[distance=0.1..]

execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/anima_conduit_shatter
