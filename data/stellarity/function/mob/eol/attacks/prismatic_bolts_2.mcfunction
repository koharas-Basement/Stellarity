tag @s add stellarity.eol.prismatic_bolts_2
tag @s add stellarity.eol.face_player

scoreboard players set @s stellarity.eol.attack_cooldown 60

execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 32
execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 29

execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 25
execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 23
