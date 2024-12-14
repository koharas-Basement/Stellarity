# Gloop Froggo protection
execute as @e[type=slime,tag=stellarity.gloop] at @s if entity @e[type=frog,distance=..8] run effect give @s resistance 1 5 true

# Villagers
execute as @e[\
    type=villager,\
    tag=stellarity.villager,\
    tag=!stellarity.villager.nitwit,\
    tag=!stellarity.villager.level_5 \
    ] at @s run function stellarity:mobs/villager/main

schedule function stellarity:loops/timed/5_tick 5t
