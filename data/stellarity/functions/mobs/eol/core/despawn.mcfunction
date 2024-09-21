particle flash ~ ~ ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

kill @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as]
tp @s ~ -2000 ~
kill @s

scoreboard players reset #ambient stellarity.misc
scoreboard players set #eol.is_alive stellarity.misc 0

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing] on passengers run kill @s
kill @e[type=block_display,limit=2,sort=nearest,tag=stellarity.eol.wing]

tellraw @a[distance=..250] ["\n",{"color":"light_purple","translate":"stellarity.eol.despawn","fallback": "%s flees as nobody is around...","with": [{"translate": "stellarity.mobs.empress","fallback": "Empress of Light"}]},"\n"]

bossbar set stellarity:eol players

execute as @a run function stellarity:mobs/eol/music/reset
