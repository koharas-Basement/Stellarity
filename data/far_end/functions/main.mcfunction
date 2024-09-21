### Init ###
execute as @a[tag=!fe.installed] run function far_end:init

### Functions ###
function far_end:mobs/check
function far_end:structures/check

### Bossbar visibility ###
# Moved from far_end:mobs/ender_dragon/main
bossbar set fe:ender_dragon players
bossbar set fokastudio:end/crystal_count players
execute as @e[type=ender_dragon] at @s run function far_end:mobs/ender_dragon/bossbar_visibility
bossbar set fe:ender_dragon visible true
