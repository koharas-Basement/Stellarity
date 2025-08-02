tag @s add stellarity.empress_of_light.no_rotate
tag @s add stellarity.empress_of_light.dash

playsound minecraft:entity.vex.ambient hostile @a[distance=0..] ~ ~ ~ 2.2 1
playsound minecraft:entity.allay.ambient_with_item hostile @a[distance=0..] ~ ~ ~ 2.2 1

execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 32
execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 29

execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 26
execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 24
