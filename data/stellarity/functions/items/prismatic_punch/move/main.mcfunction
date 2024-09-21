execute if score @s stellarity.items.prismatic_punch.marker_age matches ..40 run function stellarity:items/prismatic_punch/move/1
execute if score @s stellarity.items.prismatic_punch.marker_age matches 41..80 run function stellarity:items/prismatic_punch/move/0.8
execute if score @s stellarity.items.prismatic_punch.marker_age matches 81..120 run function stellarity:items/prismatic_punch/move/0.6
execute if score @s stellarity.items.prismatic_punch.marker_age matches 121..160 run function stellarity:items/prismatic_punch/move/0.4
execute if score @s stellarity.items.prismatic_punch.marker_age matches 161..180 run function stellarity:items/prismatic_punch/move/0.2
execute if score @s stellarity.items.prismatic_punch.marker_age matches 181..200 run function stellarity:items/prismatic_punch/move/0.1

execute if score @s stellarity.items.prismatic_punch.marker_age matches 201.. run function stellarity:items/prismatic_punch/detonate/check_self

