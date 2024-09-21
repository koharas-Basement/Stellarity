scoreboard players add @s stellarity.dragon.heartbeat 1

execute if score @s stellarity.dragon.heartbeat matches 8.. run playsound entity.warden.heartbeat hostile @a[distance=0..] ~ ~ ~ 8 0
execute if score @s stellarity.dragon.heartbeat matches 8.. run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute if score @s stellarity.dragon.heartbeat matches 8.. run scoreboard players reset @s stellarity.dragon.heartbeat
