particle flash ~ ~ ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

kill @n[type=armor_stand,tag=stellarity.eol.as]
tp @s ~ -2000 ~
kill @s

scoreboard players reset #ambient stellarity.misc
scoreboard players set #eol.is_alive stellarity.misc 0

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing] on passengers run kill @s
kill @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing]

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"stellarity.boss.empress_of_light.despawn","with":[{"translate":"stellarity.mobs.empress"}],"color":"#D0BBEA"},"\n"]

bossbar set stellarity:eol players

execute as @a run function stellarity:mob/eol/music/reset
