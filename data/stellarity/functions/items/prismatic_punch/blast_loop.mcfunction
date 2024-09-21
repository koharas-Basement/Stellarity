# Particles cycle betweem the colors of a rainbow
scoreboard players add @s stellarity.items.prismatic_punch.particle_cycle 1

execute if entity @s[tag=!stellarity.prismatic_blast.monochrome,tag=!stellarity.prismatic_blast.pastel] run function stellarity:items/prismatic_punch/move/particles/regular
execute if entity @s[tag=stellarity.prismatic_blast.monochrome] run function stellarity:items/prismatic_punch/move/particles/monochrome
execute if entity @s[tag=stellarity.prismatic_blast.pastel] run function stellarity:items/prismatic_punch/move/particles/pastel

execute if score @s stellarity.items.prismatic_punch.particle_cycle matches 33.. run scoreboard players reset @s stellarity.items.prismatic_punch.particle_cycle

# Movement
scoreboard players add @s stellarity.items.prismatic_punch.marker_age 1
execute anchored eyes unless entity @e[type=!#stellarity:invalid_targets_with_player,limit=1,sort=nearest,distance=..12] run function stellarity:items/prismatic_punch/move/main
execute anchored eyes facing entity @e[type=!#stellarity:invalid_targets_with_player,limit=1,sort=nearest,distance=..12] eyes run function stellarity:items/prismatic_punch/move/home

# Detonation
execute anchored eyes if entity @e[type=!#stellarity:invalid_targets_with_player,distance=..2.5] if score @s stellarity.items.prismatic_punch.marker_age matches 5.. run function stellarity:items/prismatic_punch/detonate/check_self
execute anchored eyes if entity @e[type=player,distance=..2.5] if score @s stellarity.items.prismatic_punch.marker_age matches 8.. run function stellarity:items/prismatic_punch/detonate/check_self
