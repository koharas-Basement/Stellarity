tag @s add stellarity.eol.no_rotate
tag @s add stellarity.eol.dash

playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 2.2 1
playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 2.2 1

execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 32
execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 29

execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 26
execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 24
