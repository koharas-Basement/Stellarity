execute as @n[type=interaction,tag=stellarity.aota.sword_hitbox] run function stellarity:mechanic/altar_of_accursed/main_interaction

execute unless entity @s[tag=stellarity.porta_altar] run function stellarity:mechanic/altar_of_accursed/sfx/loop
execute if entity @s[tag=stellarity.porta_altar,tag=!stellarity.porta_altar.stationary] run function stellarity:item/porta_altar/visuals/sigil
execute if entity @s[tag=stellarity.porta_altar,tag=stellarity.porta_altar.stationary] run function stellarity:item/porta_altar/visuals/stationary

execute if score @s stellarity.misc.loop.1s matches 20 run function stellarity:mechanic/altar_of_accursed/loop_1s

execute if entity @p[predicate=kohara:player/is_sneaking] as @e[type=item,distance=..3,nbt=!{PickupDelay:0s}] run data modify entity @s PickupDelay set value 0s
