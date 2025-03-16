function stellarity:item/main
function stellarity:mechanic/main
function stellarity:mob/main
function stellarity:sfx/main
function stellarity:util/main

execute as @a at @s run function stellarity:loop/player/main
execute as @e[type=marker,tag=stellarity.marker] at @s run function stellarity:loop/marker/main
execute as @e[type=item,tag=stellarity.item] at @s run function stellarity:loop/item_loop

# Some Minecraft change causes default Ender Dragon to spawn
# no matter what in 1.19, and this is ruining the whole system
# It DOES NOT come with the tags though! Nor the special marker!
# So I can just butcher the dragon in the most painless way possible!
execute unless score #stellarity.vanilla_dragon_butcher.setup stellarity.misc matches 1 in minecraft:the_end run function stellarity:mob/dragon/butcher/setup
execute if entity @e[type=minecraft:ender_dragon,tag=!fe.boss,tag=!fe.ender_dragon,tag=!fe.init,tag=!fe.mob,predicate=stellarity:location/dragons_den/in_biome] run schedule function stellarity:mob/dragon/butcher/scheduled 1t append

# End City Crystal loop
execute as @e[type=end_crystal,tag=stellarity.end_city.crystal] at @s run function stellarity:post_gen/end_city/crystal/main

# Moved from far_end:structures/check
execute as @e[type=minecraft:end_crystal,predicate=stellarity:mob/dragon/exit_portal_crystal] at @s run function far_end:structures/replace/exit_portal
