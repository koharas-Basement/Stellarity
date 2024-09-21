execute if entity @s[tag=stellarity.items.sabrewing.1] run function stellarity:items/sabrewing/charged_shots/trail/1
execute if entity @s[tag=stellarity.items.sabrewing.2] run function stellarity:items/sabrewing/charged_shots/trail/2
execute if entity @s[tag=stellarity.items.sabrewing.3] run function stellarity:items/sabrewing/charged_shots/trail/3

execute if entity @s[tag=!stellarity.items.sabrewing.buffed_velocity] run function stellarity:items/sabrewing/charged_shots/buff_velocity with storage stellarity:temp sabrewing
execute at @s as @e[type=marker,limit=1,sort=nearest,tag=stellarity.items.sabrewing.marker] run tp @s ~ ~ ~

execute if data entity @s inBlockState run function stellarity:items/sabrewing/charged_shots/after_stuck/in_ground
