scoreboard players add @s stellarity.dot.prismatic_inferno.progress 1

execute if score @s stellarity.dot.prismatic_inferno.progress = @s stellarity.dot.prismatic_inferno.delay run function stellarity:utils/status_effects/prismatic_inferno/damage

scoreboard players remove @s stellarity.dot.prismatic_inferno.time 1

execute if predicate kohara:chance/33percent run particle end_rod ~ ~1 ~ .3 .5 .3 0.02 1 normal

execute if score @s stellarity.dot.prismatic_inferno.time matches 0 run function stellarity:utils/status_effects/prismatic_inferno/remove
