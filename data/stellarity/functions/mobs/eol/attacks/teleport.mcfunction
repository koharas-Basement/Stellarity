summon minecraft:area_effect_cloud ~ ~ ~ {Age: 0, Duration: 1, WaitTime: -2147483648, Tags: ["stellarity.eol.teleport"]}
execute as @e[type=area_effect_cloud,tag=stellarity.eol.teleport,limit=1,sort=nearest] at @s rotated as @p rotated ~ 0 run tp ~ ~ ~

execute as @e[type=area_effect_cloud,tag=stellarity.eol.teleport,limit=1,sort=nearest] at @s run function stellarity:mobs/eol/attacks/teleport_as_aec

execute as @s at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Attack cooldown
execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 10
execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 8

execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 7
execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 5