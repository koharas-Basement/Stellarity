tag @s add stellarity.placed

execute anchored eyes run summon marker ^ ^ ^ {Tags:["stellarity.phantom_item_frame","stellarity.marker"]}
execute rotated as @s anchored eyes as @n[type=marker,tag=stellarity.phantom_item_frame] run tp @s ^ ^ ^ ~ ~ 

execute if data storage stellarity:temp {phantom_item_frame:{Rotation:[0f,0f]}} run tag @n[type=marker,tag=stellarity.phantom_item_frame] add stellarity.axis.x
execute if data storage stellarity:temp {phantom_item_frame:{Rotation:[180f,0f]}} run tag @n[type=marker,tag=stellarity.phantom_item_frame] add stellarity.axis.x

execute if data storage stellarity:temp {phantom_item_frame:{Rotation:[0f,-90f]}} run tag @n[type=marker,tag=stellarity.phantom_item_frame] add stellarity.axis.y
execute if data storage stellarity:temp {phantom_item_frame:{Rotation:[0f,90f]}} run tag @n[type=marker,tag=stellarity.phantom_item_frame] add stellarity.axis.y

execute if data storage stellarity:temp {phantom_item_frame:{Rotation:[90f,0f]}} run tag @n[type=marker,tag=stellarity.phantom_item_frame] add stellarity.axis.z
execute if data storage stellarity:temp {phantom_item_frame:{Rotation:[270f,0f]}} run tag @n[type=marker,tag=stellarity.phantom_item_frame] add stellarity.axis.z
