tp @s ~ ~ ~ ~3 ~

tag @s remove stellarity.eol.nighttime
execute unless predicate stellarity:mobs/eol/is_daytime run tag @s add stellarity.eol.nighttime
tag @s remove stellarity.eol.daytime
execute if predicate stellarity:mobs/eol/is_daytime run tag @s add stellarity.eol.daytime

scoreboard players add @s stellarity.eol.animation 1

execute if score @s stellarity.eol.animation matches 1 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 2 0
execute if score @s stellarity.eol.animation matches 1 run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ .5 0

execute if score @s stellarity.eol.animation matches ..60 run particle portal ~ ~ ~ 0 0 0 3 12 force @a[distance=..50]

execute if score @s stellarity.eol.animation matches 60 run function stellarity:mobs/eol/animations/spawn/flash
execute if score @s stellarity.eol.animation matches 80 run function stellarity:mobs/eol/animations/spawn/flash
execute if score @s stellarity.eol.animation matches 90 run function stellarity:mobs/eol/animations/spawn/flash
execute if score @s stellarity.eol.animation matches 95 run function stellarity:mobs/eol/animations/spawn/flash

execute if score @s stellarity.eol.animation matches 96 run particle explosion_emitter
execute if score @s stellarity.eol.animation matches 101 run function stellarity:mobs/eol/animations/spawn/summon_boss_mob
execute if score @s stellarity.eol.animation matches 106 run particle explosion_emitter

execute if score @s stellarity.eol.animation matches 101..145 as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] at @s run tp @s ~ ~-0.033 ~

execute if entity @s[tag=stellarity.eol.nighttime] run function stellarity:mobs/eol/animations/spawn/flower/night
execute if entity @s[tag=stellarity.eol.daytime] run function stellarity:mobs/eol/animations/spawn/flower/day

execute if score @s stellarity.eol.animation matches 165 run data merge entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] {Invulnerable:0b}
execute if score @s stellarity.eol.animation matches 165 run tag @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] add stellarity.eol.can_attack
execute if score @s stellarity.eol.animation matches 165 run kill @s
