scoreboard players reset @s stellarity.items.prismember.charge

execute if entity @s[tag=stellarity.items.prismember.ready] run kill @n[type=interaction,tag=stellarity.prismember]
tag @s remove stellarity.items.prismember.ready

title @s actionbar ""
