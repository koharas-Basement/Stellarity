# Pixies
execute as @e[type=vex,tag=!stellarity.pixie,tag=!stellarity.aware,predicate=stellarity:mobs/pixie_can_spawn_in] at @s run function stellarity:mobs/pixie/check

# Slay Queen ✨✨✨✨✨
# (Empress of Light)
execute as @e[type=vindicator,tag=stellarity.eol] at @s run function stellarity:mobs/eol/main

# Dragon stuff
execute as @e[type=ender_dragon,tag=fe.boss] at @s run function stellarity:mobs/dragon/main

# execute as @e[type=husk,tag=stellarity.enderling] at @s run function stellarity:mobs/enderlings/main
# execute as @e[type=evoker,tag=stellarity.warlock] at @s run function stellarity:mobs/warlock/main

execute as @e[type=zombified_piglin,tag=stellarity.flesh_piglin] at @s run function stellarity:mobs/flesh_piglin/main

# execute as @e[type=slime,predicate=stellarity:locations/in_the_end,tag=!stellarity.voided_slime,tag=!stellarity.end_city] at @s run function stellarity:mobs/voided_slime/abort_offsprings
execute as @e[type=marker,tag=stellarity.spawn_egg] at @s run function stellarity:mobs/handle_spawn_egg with entity @s data
