execute as @e[type=#minecraft:raiders,tag=!stellarity.stronghold.buffed,predicate=stellarity:locations/in_stronghold,] run function stellarity:mobs/stronghold/buff_illagers

execute as @e[type=slime,tag=stellarity.gloop] at @s run function stellarity:mobs/gloop/main

schedule function stellarity:loops/timed/5_second 5s
