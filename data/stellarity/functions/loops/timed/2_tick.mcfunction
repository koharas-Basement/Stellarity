# Pixie sounds, particles, etc.
execute as @e[type=vex,tag=stellarity.pixie] at @s run function stellarity:mobs/pixie/loop

# Spirit Dagger
execute as @e[type=armor_stand,tag=stellarity.spirit_dagger.spirit] at @s anchored eyes positioned ^ ^ ^ run function stellarity:items/spirit_dagger/spirit/loop

schedule function stellarity:loops/timed/2_tick 2t
