particle end_rod ~ ~1 ~ 0 0 0 0.6 150 normal
particle firework ~ ~1 ~ 0 0 0 0.6 150 normal

playsound entity.allay.death hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8
playsound entity.vex.death hostile @a[distance=0..] ~ ~1 ~ 1.5 0.7
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=0..] ~ ~ ~ 1 0.8

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing] on passengers run kill @s
kill @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing]
kill @n[type=armor_stand,tag=stellarity.eol.as]
kill @s

scoreboard players set #eol.is_alive stellarity.misc 0
scoreboard players reset #timer1
scoreboard players reset #ambient stellarity.misc

bossbar set stellarity:eol players

execute as @a run function stellarity:mob/eol/music/reset

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"stellarity.boss.empress_of_light.death","with":[{"translate":"stellarity.mobs.empress"}],"color":"#AF4BFF"},"\n"]
