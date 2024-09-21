data modify storage kohara:temp item_nbt set from entity @s

execute if data storage kohara:temp {item_nbt:{Item:{tag:{kohara.fireproof:1b}}}} run data modify entity @s Invulnerable set value 1b
execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:structure_void",tag:{kohara.mob_death_sound:1b}}}} run function kohara:items_tick_once/mob_death_sounds
function #kohara:item_tick_once

tag @s add kohara.ticked
