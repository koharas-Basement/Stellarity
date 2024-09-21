scoreboard players reset @s stellarity.items.prismember.charge

execute if entity @s[tag=stellarity.items.prismember.ready] run kill @e[type=interaction,limit=1,sort=nearest,tag=stellarity.prismember]
tag @s remove stellarity.items.prismember.ready

title @s actionbar ""
