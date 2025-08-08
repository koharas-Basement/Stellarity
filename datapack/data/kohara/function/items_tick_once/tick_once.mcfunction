execute if data entity @s {Item:{id:"minecraft:structure_void"}} if data entity @s Item.components."minecraft:custom_data"."kohara:mob_death_sound" run function kohara:items_tick_once/mob_death_sounds
function #kohara:item_tick_once

tag @s add kohara.ticked
