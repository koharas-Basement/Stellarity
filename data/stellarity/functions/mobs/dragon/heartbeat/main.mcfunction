scoreboard players add @s stellarity.dragon.heartbeat 1

execute if score @s stellarity.dragon.health_percent matches 16..20 run function stellarity:mobs/dragon/heartbeat/normal/1
execute if score @s stellarity.dragon.health_percent matches 11..15 run function stellarity:mobs/dragon/heartbeat/normal/2
execute if score @s stellarity.dragon.health_percent matches 6..10 run function stellarity:mobs/dragon/heartbeat/normal/3
execute if score @s stellarity.dragon.health_percent matches ..5 run function stellarity:mobs/dragon/heartbeat/normal/4