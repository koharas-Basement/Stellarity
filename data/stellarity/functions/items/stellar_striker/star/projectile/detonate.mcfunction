scoreboard players set #casket stellarity.misc 0
execute if entity @s[tag=stellarity.casket] run scoreboard players set #casket stellarity.misc 1

execute as @e[type=!#kohara:invalid_targets,dx=0,limit=1,sort=nearest] at @s run function stellarity:items/stellar_striker/star/projectile/damage/direct_hit
execute as @e[type=!#kohara:invalid_targets,distance=..3,tag=!stellarity.stellar_striker.no_splash] at @s run function stellarity:items/stellar_striker/star/projectile/damage/splash

tag @e[type=!#kohara:invalid_targets,tag=stellarity.stellar_striker.no_splash] remove stellarity.stellar_striker.no_splash

particle explosion ~ ~ ~ 0 0 0 0.4 1 force
particle end_rod ~ ~ ~ 0 0 0 0.12 35 force
particle poof ~ ~ ~ 1 1 1 0 16 force

execute if entity @s[tag=stellarity.casket] run particle smoke ~ ~ ~ 1 1 1 0 16 force

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 0.5 2
playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 0.5 1

scoreboard players set @s stellarity.misc2 1
