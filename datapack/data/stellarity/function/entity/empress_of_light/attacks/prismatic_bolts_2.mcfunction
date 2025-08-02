tag @s add stellarity.empress_of_light.prismatic_bolts_2
tag @s add stellarity.empress_of_light.face_player

scoreboard players set @s stellarity.empress_of_light.attack_cooldown 60

execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 32
execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 29

execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 25
execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 23
