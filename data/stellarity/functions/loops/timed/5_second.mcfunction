execute as @e[type=#minecraft:raiders,tag=!stellarity.stronghold.buffed,predicate=stellarity:locations/structures/in_stronghold] run function stellarity:mobs/stronghold/buff_illagers

execute as @e[type=slime,tag=stellarity.gloop] at @s run function stellarity:mobs/gloop/main

# Updating from 1.20.1<
execute as @e[type=marker,tag=fe.exit_portal,tag=!stellarity.marker] run function stellarity:cmd/fix_markers

schedule function stellarity:loops/timed/5_second 5s
