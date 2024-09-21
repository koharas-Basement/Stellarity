### Scoreboards ###
# variables
scoreboard objectives add fe.health dummy
scoreboard objectives add fe.variable dummy
scoreboard objectives add fe.count dummy

# timers
scoreboard objectives add fe.timer dummy

bossbar add fe:ender_dragon {"translate":"entity.minecraft.ender_dragon","color":"#BF00C8"}
bossbar set fe:ender_dragon name {"translate":"entity.minecraft.ender_dragon","color":"#BF00C8"}
bossbar set fe:ender_dragon color pink
bossbar set fe:ender_dragon players
bossbar set fe:ender_dragon max 300
bossbar set fe:ender_dragon style notched_12
bossbar set fe:ender_dragon visible true
