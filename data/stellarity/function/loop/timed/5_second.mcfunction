execute as @e[type=#minecraft:raiders,tag=!stellarity.stronghold.buffed,predicate=stellarity:location/in_structure/stronghold] run function stellarity:mob/stronghold/buff_illagers

schedule function stellarity:loop/timed/5_second 5s
