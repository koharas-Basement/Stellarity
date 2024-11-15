scoreboard players add @s stellarity.misc 1
scoreboard players add @s stellarity.misc2 1
execute if score @s stellarity.misc matches 30 run particle cloud ~ ~ ~ 1.5 1.5 1.5 0 30 force
scoreboard players reset @s[scores={stellarity.misc=30..}] stellarity.misc

execute if entity @s[tag=stellarity.wind_tunnel.activated] run particle dust{color:[0.5,0.8,1.0],scale:1.5} ~ ~ ~ 0.5 0.5 0.5 0 3 force

execute at @s[scores={stellarity.misc2=2}] facing entity @n[type=trident,tag=stellarity.sandstorm_trident] eyes run tp @s ~ ~ ~ ~ ~

execute as @e[type=!area_effect_cloud,distance=..2.5] unless entity @s[type=trident] at @s run function stellarity:items/sandstorm_trident/wind_tunnel/tunnel_move
