particle end_rod ~ ~ ~ 0 0 0 0.044 4 force
particle dust 1 0.914 0.149 1 ~ ~ ~ .1 .1 .1 0 3 force

execute if entity @s[tag=!stellarity.items.sabrewing.buffed_velocity] run function stellarity:items/sabrewing/charged_shots/buff_velocity

execute if data entity @s inBlockState run function stellarity:items/sabrewing/charged_shots/remove
