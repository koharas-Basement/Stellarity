### Scoreboards ###
# variables
scoreboard objectives add fe.health dummy
scoreboard objectives add fe.variable dummy
scoreboard objectives add fe.count dummy

# timers
scoreboard objectives add fe.timer dummy

### Functions ###
schedule function far_end:bossbars/check 10s replace

### Installation Message ###
schedule function far_end:message 1s

tag @s add fe.installed
