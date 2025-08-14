# Pixies
  execute as @e[type=vex,tag=!stellarity.pixie,tag=!stellarity.aware,predicate=stellarity:entity/pixie_can_spawn_in] at @s run function stellarity:entity/pixie/check

# Slay Queen ✨✨✨✨✨
# (Empress of Light)
  execute as @e[type=vindicator,tag=stellarity.empress_of_light] at @s run function stellarity:entity/empress_of_light/main
  execute as @e[type=marker,tag=stellarity.empress_of_light.tracker] at @s run function stellarity:entity/empress_of_light/animations/death/check_death with entity @s data."stellarity:owner"

# Dragon stuff
  execute as @e[type=ender_dragon,tag=stellarity.ender_dragon] at @s run function stellarity:entity/dragon/main

# execute as @e[type=husk,tag=stellarity.enderling] at @s run function stellarity:entity/enderlings/main
# execute as @e[type=evoker,tag=stellarity.warlock] at @s run function stellarity:entity/warlock/main

execute as @e[type=zombified_piglin,tag=stellarity.flesh_piglin] at @s run function stellarity:entity/flesh_piglin/main

# execute as @e[type=slime,predicate=stellarity:location/in_the_end,tag=!stellarity.voided_slime,tag=!stellarity.end_city] at @s run function stellarity:entity/voided_slime/abort_offsprings
  execute as @e[type=marker,tag=stellarity.spawn_egg] at @s run function stellarity:entity/handle_spawn_egg with entity @s data

execute as @e[type=illusioner,tag=!smithed.entity] at @s if biome ~ ~ ~ #stellarity:spawns_animals run function stellarity:entity/animal/end_spawn

execute as @e[type=allay,tag=stellarity.shulking] at @s run function stellarity:entity/shulking/main_fly
execute as @e[type=shulker,tag=stellarity.shulking.body] at @s run function stellarity:entity/shulking/main

function stellarity:entity/animal/convert
