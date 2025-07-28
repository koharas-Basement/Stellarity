summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5, Tags: ["stellarity.eol.teleport","smithed.entity","smithed.strict"]}
execute as @n[type=area_effect_cloud,tag=stellarity.eol.teleport] at @s rotated as @p rotated ~ 0 run tp ~ ~ ~

execute as @n[type=area_effect_cloud,tag=stellarity.eol.teleport] at @s run function stellarity:entity/eol/attacks/teleport_as_aec

execute as @s at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Attack cooldown
  execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 10
  execute if entity @s[tag=stellarity.eol.nighttime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 8

execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_1] run scoreboard players set @s stellarity.eol.attack_cooldown 7
execute if entity @s[tag=stellarity.eol.daytime,tag=stellarity.eol.phase_2] run scoreboard players set @s stellarity.eol.attack_cooldown 5
