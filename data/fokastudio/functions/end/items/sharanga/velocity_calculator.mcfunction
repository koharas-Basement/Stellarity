# Not used due to my faulty math skills

execute store result score $sharanga.vel_x foka.misc.data run data get entity @s Motion.[0] 100
execute store result score $sharanga.vel_y foka.misc.data run data get entity @s Motion.[1] 100
execute store result score $sharanga.vel_z foka.misc.data run data get entity @s Motion.[2] 100

scoreboard players operation $sharanga.vel_x foka.misc.data *= $sharanga.vel_x foka.misc.data
scoreboard players operation $sharanga.vel_y foka.misc.data *= $sharanga.vel_x foka.misc.data
scoreboard players operation $sharanga.vel_z foka.misc.data *= $sharanga.vel_x foka.misc.data

scoreboard players operation $sharanga.vel_sum foka.misc.data = $sharanga.vel_x foka.misc.data
scoreboard players operation $sharanga.vel_sum foka.misc.data += $sharanga.vel_y foka.misc.data
scoreboard players operation $sharanga.vel_sum foka.misc.data += $sharanga.vel_z foka.misc.data

execute if score $sharanga.vel_sum foka.misc.data matches ..0 run scoreboard players operation $sharanga.vel_sum foka.misc.data *= #-1 constant

scoreboard players operation in math = $sharanga.vel_sum foka.misc.data
function math:root

scoreboard players operation out math *= #-1 constant

execute store result entity @s Motion.[1] float 0.01 run scoreboard players get out math

tellraw @a {"score":{"objective": "math","name":"out"},"color":"green"}
