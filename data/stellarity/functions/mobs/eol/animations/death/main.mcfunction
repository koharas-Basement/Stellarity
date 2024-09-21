scoreboard players add @s stellarity.eol.animation 1

tp @s ~ ~0.05 ~

particle end_rod ~ ~ ~ 0 0 0 0.35 2

kill @e[type=marker,tag=stellarity.eol.ethereal_lance]
kill @e[type=marker,tag=stellarity.eol.prismatic_bolt]

execute if score @s stellarity.eol.animation matches 1 run playsound entity.vex.death hostile @a[distance=0..] ~ ~ ~ 2.2 1

scoreboard players add #timer1 stellarity.misc 1
execute if score #timer1 stellarity.misc matches 4 run particle explosion_emitter ~ ~1 ~ 0 0 0 1 1 force
execute if score #timer1 stellarity.misc matches 4 run scoreboard players reset #timer1

execute if score @s stellarity.eol.animation matches 60 run function stellarity:mobs/eol/animations/death/end

execute if score @s[tag=stellarity.eol.full_daytime] stellarity.eol.animation matches 60 run function stellarity:mobs/eol/core/loot/daytime
execute if score @s[tag=!stellarity.eol.full_daytime] stellarity.eol.animation matches 60 run function stellarity:mobs/eol/core/loot/nighttime
