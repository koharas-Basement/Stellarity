# Pixies
  execute as @e[type=vex,tag=!stellarity.pixie,tag=!smithed.entity,tag=!stellarity.aware,predicate=stellarity:entity/pixie_can_spawn_in] at @s run function stellarity:entity/pixie/check

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

execute as @e[type=illusioner,tag=!smithed.entity] at @s if biome ~ ~ ~ #is_end run function stellarity:entity/animal/end_spawn

execute as @e[type=allay,tag=stellarity.shulking] at @s run function stellarity:entity/shulking/main
execute as @e[type=shulker,tag=stellarity.shulking.body] at @s run function stellarity:entity/shulking/main_body
execute as @e[type=item_display,tag=stellarity.shulking.spike] at @s run function stellarity:entity/shulking/attacks/spike/loop

execute as @e[type=#stellarity:end_variant_animals,tag=!smithed.entity,nbt={variant:"stellarity:end"}] run function stellarity:entity/animal/convert
execute as @e[type=sheep,tag=!stellarity.invalid_animal,tag=!smithed.entity] at @s run function stellarity:entity/animal/convert_sheep

execute as @e[tag=stellarity.shulking.body] at @s run bossbar set stellarity:shulking players @a[distance=..64]
execute unless entity @e[tag=stellarity.shulking.body] run bossbar set stellarity:shulking players

execute as @e[type=item_display,tag=stellarity.shulking.ray] at @s run function stellarity:entity/shulking/attacks/ray/loop with entity @s data."stellarity:owner"

