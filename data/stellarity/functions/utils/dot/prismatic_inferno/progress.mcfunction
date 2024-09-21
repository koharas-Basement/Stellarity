scoreboard players add @s stellarity.dot.prismatic_inferno.progress 1

execute if score @s stellarity.dot.prismatic_inferno.progress = @s stellarity.dot.prismatic_inferno.delay run function stellarity:utils/dot/prismatic_inferno/damage

scoreboard players remove @s stellarity.dot.prismatic_inferno.time 1

execute if score @s stellarity.dot.prismatic_inferno.time matches 0 run function stellarity:utils/dot/prismatic_inferno/remove
