particle flash ~ ~ ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

kill @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as]
tp @s ~ -2000 ~
kill @s

scoreboard players reset #ambient stellarity.misc
