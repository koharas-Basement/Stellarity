scoreboard players add @s stellarity.eol.animation 1

tp @s ~ ~0.04 ~

kill @e[type=marker,tag=stellarity.eol.ethereal_lance]
kill @e[type=marker,tag=stellarity.eol.prismatic_bolt]

execute if score @s stellarity.eol.animation matches 1 run playsound entity.vex.death hostile @a[distance=0..] ~ ~ ~ 2.2 1

scoreboard players add #timer1 stellarity.misc 1
execute if score #timer1 stellarity.misc matches 3 run particle explosion_emitter ~ ~1 ~ 0 0 0 1 1 force
execute if score #timer1 stellarity.misc matches 3 run scoreboard players reset #timer1

execute if score @s stellarity.eol.animation matches 60 run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if score @s stellarity.eol.animation matches 60 run particle end_rod ~ ~1 ~ 0 0 0 0.33 150 force
execute if score @s stellarity.eol.animation matches 60 run playsound entity.allay.death hostile @a[distance=0..] ~ ~1 ~ 2.2 1
execute if score @s stellarity.eol.animation matches 60 run playsound entity.blaze.death hostile @a[distance=0..] ~ ~1 ~ 2.2 0.7
execute if score @s stellarity.eol.animation matches 60 run kill @s
execute if score @s stellarity.eol.animation matches 60 run kill @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as]
execute if score @s stellarity.eol.animation matches 60 run scoreboard players reset #timer1
execute if score @s stellarity.eol.animation matches 60 run scoreboard players reset #ambient stellarity.misc

execute if score @s[tag=stellarity.eol.full_daytime] stellarity.eol.animation matches 60 run function stellarity:mobs/eol/core/loot/daytime
execute if score @s[tag=!stellarity.eol.full_daytime] stellarity.eol.animation matches 60 run function stellarity:mobs/eol/core/loot/nighttime
