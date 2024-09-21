scoreboard players add @s stellarity.eol.animation 1

tp @s[scores={stellarity.eol.animation=..100}] ~ ~0.04 ~ ~ ~
tp @s[scores={stellarity.eol.animation=101..}] ~ ~0.02 ~ ~2 ~

execute if score @s stellarity.eol.animation matches 1 \
	unless predicate stellarity:mobs/eol/is_daytime run \
	tag @s add stellarity.eol.nighttime
execute if score @s stellarity.eol.animation matches 1 \
	if predicate stellarity:mobs/eol/is_daytime run \
	tag @s add stellarity.eol.daytime

execute if score @s stellarity.eol.animation matches 1 as @a[distance=..60] run function stellarity:mobs/eol/animations/spawn/stopsound
execute if score @s stellarity.eol.animation matches 1 run playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=0..] ~ ~ ~ .5 0

execute if score @s stellarity.eol.animation matches ..60 run particle portal ~ ~ ~ 0 0 0 3 12 force @a[distance=..50]

execute if score @s stellarity.eol.animation matches 60 run function stellarity:mobs/eol/animations/spawn/flash
execute if score @s stellarity.eol.animation matches 80 run function stellarity:mobs/eol/animations/spawn/flash
execute if score @s stellarity.eol.animation matches 90 run function stellarity:mobs/eol/animations/spawn/flash
execute if score @s stellarity.eol.animation matches 95 run function stellarity:mobs/eol/animations/spawn/flash

execute if score @s stellarity.eol.animation matches 96 run particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]
execute if score @s stellarity.eol.animation matches 101 positioned ~ ~ ~ run function stellarity:mobs/eol/animations/spawn/summon_boss_mob
execute if score @s stellarity.eol.animation matches 105 run particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]

execute if score @s stellarity.eol.animation matches 125 as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] at @s run playsound minecraft:entity.vex.charge hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8

execute if score @s stellarity.eol.animation matches 101..145 as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] at @s run tp @s ~ ~-0.015 ~
execute if score @s stellarity.eol.animation matches 145..155 as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] at @s run tp @s ~ ~-0.01 ~

execute if entity @s[scores={stellarity.eol.animation=101..},tag=stellarity.eol.nighttime] run function stellarity:mobs/eol/animations/spawn/aurora/night
execute if entity @s[scores={stellarity.eol.animation=101..},tag=stellarity.eol.daytime] run function stellarity:mobs/eol/animations/spawn/aurora/day

execute if score @s stellarity.eol.animation matches 165 run data merge entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] {Invulnerable:0b}
execute if score @s stellarity.eol.animation matches 165 run tag @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] add stellarity.eol.can_attack
execute if score @s stellarity.eol.animation matches 170 run kill @s
